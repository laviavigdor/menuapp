//
//  ViewController.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/12/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "FBLoginViewController.h"
#import "RestaurantsViewController.h"

@interface FBLoginViewController ()
@property (weak, nonatomic) IBOutlet FBLoginView *fbLoginView;

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
    self.data = [[Data alloc] init];
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

-(void)moveToRestaurantsView {
        RestaurantsViewController *resturantsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"resturantsViewController"];
        if([resturantsViewController isKindOfClass:[RestaurantsViewController class]])
        {
            [self.navigationController pushViewController:resturantsViewController animated:YES];
        }

}
- (IBAction)btnSkip:(UIButton *)sender {
    NSLog(@"btnSkip");
    [self moveToRestaurantsView];
}
@end
