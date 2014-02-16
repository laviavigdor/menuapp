//
//  Dish.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "Dish.h"

@implementation Dish
-(id)init {
    NSString *defaultName = @"A dish";
    return [self initWithName:defaultName];
}
-(id)initWithName:(NSString *)name {
    NSInteger defaultRating = 3;
    return [self initWithName:name andRating:defaultRating];
}
-(id)initWithName:(NSString *)name andRating:(NSInteger)rating {
    if (self = [super init]) {
        self.name = name;
        self.rating = rating;
    }
    return self;
}
@end
