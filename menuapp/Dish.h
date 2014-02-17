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
-(id)initWithName:(NSString *)name rating:(NSNumber *)rating;
-(id)initWithName:(NSString *)name description:(NSString *)description price:(NSNumber *)price imageUrl:(NSString *)imageUrl rating:(NSNumber *)rating;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *description;
@property (nonatomic, retain) NSNumber *price;
@property (nonatomic, retain) NSString *imageUrl;
@property (nonatomic) NSNumber *rating;
@end
