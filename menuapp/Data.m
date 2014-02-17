//
//  Data.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/13/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "Data.h"


@implementation Data


+(instancetype)sharedInstance
{
    static Data *instance = nil;
    if(instance == nil){
        instance = [[Data alloc] init];
    }
    return instance;
}

-(id)init
{
    if (self = [super init]) {
        self.user = [[User alloc] init];
        self.restaurants = [[NSMutableArray alloc] initWithCapacity:20];

        [self loadRestaurants];
    }
    return self;
}
-(void) loadRestaurants {
    [self.restaurants removeAllObjects];
    
    NSMutableArray *menu = [[NSMutableArray alloc] initWithCapacity:20];
    Dish *dish = [[Dish alloc] initWithName:@"French Tuna Salad" andPrice:20 andRating:4];
    [menu addObject:dish];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Momo's Kube"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Sagi Sabich"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Patio"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"GreenSalad"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Suchia"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Tzuka"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Manch Pizza"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Crunch Pizza"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"American Pizza"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Burger Runch"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Carmela"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Yoel"]];
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Burgers"]];
}
@end