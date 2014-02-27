//
//  MenuViewController.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"
#import "DishCollectionViewCell.h"

@interface MenuViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (nonatomic, strong) Data *data;

@end
