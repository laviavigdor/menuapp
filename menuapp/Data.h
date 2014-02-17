//
//  Data.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/13/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"
#import "User.h"

@interface Data : NSObject 
+(instancetype)sharedInstance; // singleton
@property (nonatomic, retain) User *user;
@property (nonatomic, retain) NSMutableArray *restaurants;
@property (nonatomic) int restaurantId;

@end
