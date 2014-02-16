//
//  Restaurant.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant

-(id) init
{
    NSString *defaultName = @"A Restaurant";
    return [self initWithName: defaultName];
}
-(id)initWithName:(NSString *)name
{
    NSMutableArray *defaultMenu = [[NSMutableArray alloc] initWithCapacity:20];
    Dish *defaultDish = [[Dish alloc] init];
    [defaultMenu addObject:defaultDish];
    return [self initWithName: name andMenu:defaultMenu];
}
-(id)initWithName:(NSString*)name andMenu:(NSMutableArray *)menu {
    if (self = [super init]) {
        self.name = name;
        self.menu = menu;
    }
    return self;
}

@end