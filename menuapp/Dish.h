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
-(id)initWithName:(NSString *)name andRating:(NSInteger)rating;
@property (nonatomic, retain) NSString *name;
@property (nonatomic) NSInteger rating;
@end
