//
//  MenuViewController.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "MenuViewController.h"

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
    self.title = ((Restaurant *)[self.data.restaurants objectAtIndex:self.data.restaurantId]).name;
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
    DishCollectionViewCell *dishView = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"dishCollectionViewCell"
                                    forIndexPath:indexPath];

    if([dishView isKindOfClass:[DishCollectionViewCell class]]) {
        Restaurant *restaurant = [self.data.restaurants objectAtIndex:self.data.restaurantId];
        Dish *dish = [restaurant.menu objectAtIndex:indexPath.row];
            if([dish isKindOfClass:[Dish class]]) {
                dishView.name.text = dish.name;
                dishView.description.text = dish.description;
                dishView.price.text = [NSString stringWithFormat:@"%.2f%@",dish.price,@"₪"];
                dishView.rating.text = [NSString stringWithFormat:@"%d כוכבים",dish.rating];
                [dishView.image setImage:[UIImage imageNamed:@"placeholder"]];
                dishView.image.imageURL = dish.imageUrl;
            }
    }

    return dishView;
}
@end
