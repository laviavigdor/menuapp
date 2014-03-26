//
//  MenuViewController.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "MenuViewController.h"
#import "Dish.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	NSLog(@"MenuViewController viewDidLoad");
    self.data = [Data sharedInstance];
    NSLog(@"RestaurantId:%d", self.data.restaurantId);
    NSString *restaurantName = ((Restaurant *)[self.data.restaurants objectAtIndex:self.data.restaurantId]).name;
    self.title = restaurantName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UICollectionViewDataSource

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section
{
    Restaurant *restaurant = [self.data.restaurants objectAtIndex:self.data.restaurantId];
    return [restaurant.menu count];
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"collectionView cellForItemAtIndexPath:%ld", (long)indexPath.row);
    DishCollectionViewCell *dishView = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"dishCollectionViewCell"
                                    forIndexPath:indexPath];

    if([dishView isKindOfClass:[DishCollectionViewCell class]]) {
        Restaurant *restaurant = [self.data.restaurants objectAtIndex:self.data.restaurantId];
        Dish *dish = [restaurant.menu objectAtIndex:indexPath.row];
            if([dish isKindOfClass:[Dish class]]) {
                dishView.dish = dish;
                
                [dishView reloadTableData];

    
                /*
                dishView.name.text = dish.name;
                
                dishView.description.text = dish.description;
                
                dishView.price.text = [NSString stringWithFormat:@"%.2f%@",dish.price,@"₪"];
                //[dishView.image setImage:[UIImage imageNamed:@"placeholder"]];
                dishView.image.imageURL = dish.imageUrl;
                
                
                switch (dish.rating) {
                    case 0:
                        dishView.rating.text = [NSString stringWithFormat:@"☆☆☆☆☆"];
                        break;
                    case 1:
                        dishView.rating.text = [NSString stringWithFormat:@"★☆☆☆☆"];
                        break;
                    case 2:
                        dishView.rating.text = [NSString stringWithFormat:@"★★☆☆☆"];
                        break;
                    case 3:
                        dishView.rating.text = [NSString stringWithFormat:@"★★★☆☆"];
                        break;
                    case 4:
                        dishView.rating.text = [NSString stringWithFormat:@"★★★★☆"];
                        break;
                    case 5:
                        dishView.rating.text = [NSString stringWithFormat:@"★★★★★"];
                        break;
                }
                
                dishView.textField.text = @" ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ...  ביקורות על המנה ... ";
                
                // Auto-height (doesn't work..)
                CGRect frameRect = dishView.textField.frame;
                frameRect.size.height = 120;
                dishView.textField.frame = frameRect;
                
                
                // ROUNDED CORNERS
                dishView.image.layer.cornerRadius = 10;
                dishView.image.layer.masksToBounds = YES;
                */

            }
    }

    return dishView;
}



@end
