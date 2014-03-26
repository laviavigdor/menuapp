//
//  DishCollectionViewCell.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "DishCollectionViewCell.h"
#import "DishTableCell.h"
#import "ReviewTableCell.h"

@implementation DishCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) reloadTableData {
    [self.tableView reloadData];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {return 1;}
    if (section == 1) {return 5;}
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"tableView cellForRowAtIndexPath:%@", indexPath);
    NSLog(@"tableView section:%ld", (long)indexPath.section);
    NSLog(@"tableView row:%ld", (long)indexPath.row);

    static NSString *dishTableCell = @"dishTableCell";
    static NSString *reviewTableCell = @"reviewTableCell";
    
    if (indexPath.section==0) {

        DishTableCell *dishCellView = [tableView dequeueReusableCellWithIdentifier:dishTableCell];
        if (dishCellView == nil) {
            dishCellView = [[DishTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:dishTableCell];
        }

        dishCellView.name.text = self.dish.name;
        dishCellView.description.text = self.dish.description;
        dishCellView.price.text = [NSString stringWithFormat:@"%.2f%@",self.dish.price,@"₪"];
        [dishCellView.dishImageView setImage:[UIImage imageNamed:self.dish.imageName]];
        switch (self.dish.rating) {
            case 0:
                dishCellView.rating.text = [NSString stringWithFormat:@"☆☆☆☆☆"];
                break;
            case 1:
                dishCellView.rating.text = [NSString stringWithFormat:@"★☆☆☆☆"];
                break;
            case 2:
                dishCellView.rating.text = [NSString stringWithFormat:@"★★☆☆☆"];
                break;
            case 3:
                dishCellView.rating.text = [NSString stringWithFormat:@"★★★☆☆"];
                break;
            case 4:
                dishCellView.rating.text = [NSString stringWithFormat:@"★★★★☆"];
                break;
            case 5:
                dishCellView.rating.text = [NSString stringWithFormat:@"★★★★★"];
                break;
        }
        // ROUNDED CORNERS
        dishCellView.dishImageView.layer.cornerRadius = 10;
        dishCellView.dishImageView.layer.masksToBounds = YES;
            return dishCellView;
    }
    else if (indexPath.section==1) {
        ReviewTableCell *dishCellView = [tableView dequeueReusableCellWithIdentifier:reviewTableCell];
        if (dishCellView == nil) {
            dishCellView = [[ReviewTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reviewTableCell];
        }

        dishCellView.name.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
        
        return dishCellView;
    } else {
        [NSException raise:@"Invalid indexPath value" format:@"indexPath of %@ is invalid", indexPath];
        DishTableCell *dishCellView = [tableView dequeueReusableCellWithIdentifier:reviewTableCell];
        if (dishCellView == nil) {
            dishCellView = [[DishTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reviewTableCell];
        }
        return dishCellView;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section==0) {
        return 305.0f;
    } else {
        return 60.0f;
    }
}



@end
