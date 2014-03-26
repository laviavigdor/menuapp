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
    if (section == 1) {return 3;}
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
        ReviewTableCell *reviewCellView = [tableView dequeueReusableCellWithIdentifier:reviewTableCell];
        if (reviewCellView == nil) {
            reviewCellView = [[ReviewTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reviewTableCell];
        }
        
        if (indexPath.row==0) {
            reviewCellView.name.text = @"דינה ברזילי";
            [reviewCellView.imageView2 setImage:[UIImage imageNamed:@"Joy.jpg"]];
            reviewCellView.review.text = @"המנה היתה ממש טעימה. הייתי ממליצה בחום להזמין אותה.";
        } else if (indexPath.row==1) {
            reviewCellView.name.text = @"גיל לוויתן";
            [reviewCellView.imageView2 setImage:[UIImage imageNamed:@"mike.jpeg"]];
            reviewCellView.review.text = @"היה טעים אך לא מספיק משביע.";
        } else if (indexPath.row==2) {
            reviewCellView.name.text = @"רותי פומרנץ";
            [reviewCellView.imageView2 setImage:[UIImage imageNamed:@"amanda.jpeg"]];
            reviewCellView.review.text = @"הלכתי לארוחת צהריים שם עם חברה מהעבודה. בתחילה הייתי סקפטית, אך המנה הזו היתה ממש סוף הדרך.";
        } else {
            reviewCellView.name.text = @"דינה ברזילי";
            [reviewCellView.imageView2 setImage:[UIImage imageNamed:@"Joy.jpg"]];
            reviewCellView.review.text = @"המנה היתה ממש טעימה. הייתי ממליצה בחום להזמין אותה.";
        }
        // ROUNDED CORNERS
        reviewCellView.imageView2.layer.cornerRadius = 10;
        reviewCellView.imageView2.layer.masksToBounds = YES;
        
        return reviewCellView;
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
        return 70.0f;
    }
}



@end
