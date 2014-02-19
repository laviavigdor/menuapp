//
//  Restaurant.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dish.h"

@interface Restaurant : NSObject
-(id)initWithName:(NSString *)name;
-(id)initWithName:(NSString*)name andMenu:(NSMutableArray *)menu;
-(id)initWithName:(NSString*)name menu:(NSMutableArray *)menu imageUrl:(NSURL *)imageUrl;

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *address;
@property (nonatomic, retain) NSString *city;
@property (nonatomic, retain) NSString *phone;
@property (nonatomic) BOOL *isKosher;
@property (nonatomic, retain) NSURL *imageUrl;
@property (nonatomic, retain) NSMutableArray *menu; // array of dishes
@end
