//
//  DishCollectionViewCell.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncImageView.h"
#import "Dish.h"

@interface DishCollectionViewCell : UICollectionViewCell <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) Dish *dish;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
-(void) reloadTableData;
@end
