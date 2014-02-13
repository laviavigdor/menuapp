//
//  ViewController.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/12/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "FBLoginViewController.h"
#import "Data.h"

@interface FBLoginViewController ()
@property (weak, nonatomic) IBOutlet FBLoginView *fbLoginView;
@property (nonatomic) Data *data;
@end

@implementation FBLoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.fbLoginView.readPermissions = @[@"basic_info",@"email"];
    self.fbLoginView.delegate = self;
    self.data = [[Data alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// This method will be called when the user information has been fetched
- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                            user:(id<FBGraphUser>)user {
    //user.id;
    //user.name;
    NSLog(@"Username: %@", user.name);
    self.data.username = user.name;
}


@end
