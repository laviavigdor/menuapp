//
//  Dish.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dish : NSObject
-(id)initWithName:(NSString *)name;
-(id)initWithName:(NSString *)name rating:(int)rating;
-(id)initWithName:(NSString *)name description:(NSString *)description price:(double)price imageUrl:(NSURL *)imageUrl rating:(int)rating;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic) double price;
@property (nonatomic, retain) NSURL *imageUrl;
@property (nonatomic) int rating;
@end
