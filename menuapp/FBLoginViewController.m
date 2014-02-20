//
//  ViewController.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/12/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "FBLoginViewController.h"
#import "RestaurantsViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface FBLoginViewController ()
@property (weak, nonatomic) IBOutlet FBLoginView *fbLoginView;
@property (nonatomic, strong) IBOutlet CLLocationManager *locationManager;
- (IBAction)btnSkip:(UIButton *)sender;
@property (nonatomic) Data *data;
@end

@implementation FBLoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"FbLoginViewController viewDidLoad");
    self.fbLoginView.readPermissions = @[@"basic_info",@"email"];
    self.fbLoginView.delegate = self;
    self.data = [Data sharedInstance];
    
    [self handleLocation];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"FbLoginViewController viewWillAppear");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

// This method will be called when the user information has been fetched
- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                            user:(id<FBGraphUser>)user {
    NSLog(@"FbLoginViewController loginViewFetchedUserInfo");
    self.data.user.name = user.name;
}

- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView
{
    [self moveToRestaurantsView];
}
- (IBAction)btnSkip:(UIButton *)sender {
    NSLog(@"btnSkip");
    [self moveToRestaurantsView];
}

-(void)moveToRestaurantsView {
    RestaurantsViewController *resturantsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"resturantsViewController"];
    if([resturantsViewController isKindOfClass:[RestaurantsViewController class]])
    {
        [self.navigationController pushViewController:resturantsViewController animated:YES];
    }
}
- (NSString *)deviceLocation {
    return [NSString stringWithFormat:@"latitude: %f longitude: %f", self.locationManager.location.coordinate.latitude, self.locationManager.location.coordinate.longitude];
}
-(void)handleLocation {
    // LOCATION
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.distanceFilter = kCLDistanceFilterNone; // whenever we move
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation; // Highest accuracy
    [self.locationManager startUpdatingLocation];
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    CLLocation *location = [[CLLocation alloc] initWithLatitude:self.locationManager.location.coordinate.latitude
                                                      longitude:self.locationManager.location.coordinate.longitude];
    
    [geocoder reverseGeocodeLocation:location completionHandler:^(NSArray *placemarks, NSError *error)
     {
         if (error)
         {
             NSLog(@"failed with error: %@", error);
             return;
         }
         if(placemarks.count > 0)
         {
             NSDictionary *dictionary = [[placemarks objectAtIndex:0] addressDictionary];
             NSLog(@"%@", dictionary);
             self.location.text = [NSString stringWithFormat:@"%@ %@ %@", [dictionary objectForKey:@"Street"],[dictionary objectForKey:@"City"],[dictionary objectForKey:@"Country"]];
             
         }
     }];
    NSLog(@"%@", [self deviceLocation]);
}
@end
