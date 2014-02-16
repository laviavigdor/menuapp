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
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSMutableArray *menu; // array of dishes
@end
