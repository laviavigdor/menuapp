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
    self.data = [[Data alloc] init];
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
    return 2;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellForItemAtIndexPath %ld", (long)indexPath.row);
    DishCollectionViewCell *dishView = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"dishCollectionViewCell"
                                    forIndexPath:indexPath];
    /*
    UIImage *image;
    long row = [indexPath row];
    image = [UIImage imageNamed:_carImages[row]];
    myCell.imageView.image = image;
    */
    
    if([dishView isKindOfClass:[DishCollectionViewCell class]]) {
        NSLog(@"dishView isKindOfClass:[DishCollectionViewCell");
        Restaurant *restaurant = [self.data.restaurants objectAtIndex:self.data.restaurantId];
        Dish *dish = [restaurant.menu objectAtIndex:indexPath.row];
        NSLog(@"Restaurant: %@", restaurant.name);
        NSLog(@"Menu Items: %lu", (unsigned long)[restaurant.menu count]);
        NSLog(@"Dish: %@", dish.name);
            if([dish isKindOfClass:[Dish class]]) {
                dishView.name.text = dish.name;
                NSLog(@"Dish: %@", dish.name);
                //dishView.name.image = dish.imageUrl;
                //dishView.name.description = dish.description;
            }
    }

    return dishView;
}
@end
