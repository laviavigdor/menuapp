//
//  User.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "User.h"

@implementation User
-(id)init {
    NSString *defaultName = @"Guest";
    return [self initWithName:defaultName];
}
-(id)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

@end
