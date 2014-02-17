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
    DishCollectionViewCell *myCell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"dishCollectionViewCell"
                                    forIndexPath:indexPath];
    /*
    UIImage *image;
    long row = [indexPath row];
    image = [UIImage imageNamed:_carImages[row]];
    myCell.imageView.image = image;
    */
    
    if([myCell isKindOfClass:[DishCollectionViewCell class]]) {
        myCell.name.text = @"A sample dish name";
    }

    return myCell;
}
@end
