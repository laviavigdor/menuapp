//
//  ReviewTableCell.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 3/26/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "ReviewTableCell.h"

@implementation ReviewTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
