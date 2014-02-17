//
//  DishCollectionViewCell.h
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/16/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DishCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UITextView *description;

@end
