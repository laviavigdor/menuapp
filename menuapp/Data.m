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
        self.restaurantId = 0;
        self.restaurants = [[NSMutableArray alloc] initWithCapacity:20];

        [self loadRestaurants];
    }
    return self;
}
-(void) loadRestaurants {
    [self.restaurants removeAllObjects];
    
    NSMutableArray *menu = [[NSMutableArray alloc] initWithCapacity:20];
    [menu addObject:[[Dish alloc]
                     initWithName:@"French Tuna Salad"
                     description:@"Tuna, fresh vegetables, Lettuce ..."
                     price:45
                     imageUrl:@"http://www.enjoyyourcooking.com/wp-content/uploads/2009/02/green-tuna-salad.jpg"
                     rating:4]];
    [menu addObject:[[Dish alloc]
                     initWithName:@"Healthy Israeli Salad"
                     description:@"Chopped vegetables salad, onions, pepper, carrots, tomato ..."
                     price:43
                     imageUrl:@"http://challahmaidel.files.wordpress.com/2012/06/israeli-salad.jpg"
                     rating:5]];

    
    [self.restaurants addObject:[[Restaurant alloc] initWithName:@"Momo's Kube" andMenu:menu]];
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