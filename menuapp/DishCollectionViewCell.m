//
//  DishCollectionViewCell.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "DishCollectionViewCell.h"
#import "DishTableCell.h"

@implementation DishCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"dishTableCell";
    DishTableCell *dishCellView = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (dishCellView == nil) {
        dishCellView = [[DishTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    dishCellView.name.text = self.dish.name;
    dishCellView.description.text = self.dish.description;
    dishCellView.price.text = [NSString stringWithFormat:@"%.2f%@",self.dish.price,@"₪"];
    [dishCellView.dishImageView setImage:[UIImage imageNamed:self.dish.imageName]];

    
    // ROUNDED CORNERS
    dishCellView.dishImageView.layer.cornerRadius = 10;
    dishCellView.dishImageView.layer.masksToBounds = YES;

    //dishCellView.imageView2.image = [UIImage imageNamed:@"kabab.jpg"];
    
    return dishCellView;
}



@end
