//
//  Dish.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "Dish.h"
static NSString *const defaultName = @"A sample dish";
static NSString *const defaultDescription = @"Hard to describe how very good this dish is";


@implementation Dish
-(id)init {
    return [self initWithName:defaultName];
}
-(id)initWithName:(NSString *)name {
    int defaultRating = arc4random_uniform(5) + 1;// random rating 1-5
    return [self initWithName:name rating:defaultRating];
}
-(id)initWithName:(NSString *)name rating:(int)rating {
    double defaultPrice = 30;
    NSString *defaultImageName = @"placeholder";
    return [self initWithName:name description:defaultDescription price:defaultPrice imageName:defaultImageName rating:rating];
}
-(id)initWithName:(NSString *)name description:(NSString *)description price:(double)price imageName:(NSString *)imageName rating:(int)rating {
    if (self = [super init]) {
        self.name = name;
        self.description = description;
        self.price = price;
        self.imageName = imageName;
        self.rating = rating;
    }
    return self;
}

@end
