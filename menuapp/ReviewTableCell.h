//
//  ReviewTableCell.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 3/26/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncImageView.h"

@interface ReviewTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *review;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;

@end
