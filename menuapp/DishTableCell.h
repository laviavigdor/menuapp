//
//  DishTableCell.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 3/10/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncImageView.h"

@interface DishTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet AsyncImageView *dishImageView;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *description;
@property (weak, nonatomic) IBOutlet UILabel *rating;
@property (weak, nonatomic) IBOutlet UILabel *price;

@end
