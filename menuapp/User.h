//
//  User.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
-(id)initWithName:(NSString *)name;
@property (nonatomic, retain) NSString *name;
@end
