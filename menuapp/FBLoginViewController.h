//
//  ViewController.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/12/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import "Data.h"

@interface FBLoginViewController : UIViewController <FBLoginViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *location;

@end
