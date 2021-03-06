//
//  RestaurantsViewController.m
//  menuapp
//
//  Created by Lavi Avigdor 2 on 2/13/14.
//  Copyright (c) 2014 Toluna. All rights reserved.
//

#import "RestaurantsViewController.h"
#import "MenuViewController.h"
#import "AsyncImageView.h"

@interface RestaurantsViewController ()
@property (nonatomic, strong) NSArray *tableData;
@end

@implementation RestaurantsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"RestaurantsViewController viewDidLoad");
    self.data = [Data sharedInstance];
    self.tableData = self.data.restaurants;
    self.title = @"Restaurants";
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"RestaurantsViewController viewWillAppear");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.textLabel.textAlignment = NSTextAlignmentRight;
    }
    
    Restaurant *restaurant = [self.tableData objectAtIndex:indexPath.row];
    cell.textLabel.text = restaurant.name;
    [cell.imageView setImage:[UIImage imageNamed:@"placeholder"]];
    
    cell.imageView.imageURL = restaurant.imageUrl;

    
    cell.imageView.layer.cornerRadius = 5;
    cell.imageView.layer.masksToBounds = YES;

    
//    cell.imageView.imageURL = [NSURL URLWithString:@"http://www.veryicon.com/icon/png/Object/Points%20Of%20Interest/Restaurant%20Blue.png"];
    return cell;
}

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"RestaurantsViewController prepareForSegue");
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.destinationViewController isKindOfClass:[MenuViewController class]])
    {
        //MenuViewController* menuViewController = segue.destinationViewController;
        //menuViewController.data = self.data;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"RestaurantsViewController didSelectRowAtIndexPath CLICK row:%ld",(long)indexPath.row);
    self.data.restaurantId = indexPath.row;
    [self moveToMenuView];
}

-(void)moveToMenuView {
    MenuViewController *menuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"menuViewController" ];
    if([menuViewController isKindOfClass:[MenuViewController class]])
    {
        NSLog(@"RestaurantId:%d", self.data.restaurantId);
        [self.navigationController pushViewController:menuViewController animated:YES];
    }
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/




@end
