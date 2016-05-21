//
//  RememberListTableViewController.m
//  RememberList
//
//  Created by Cesar Brenes on 5/21/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "RememberListTableViewController.h"
#import "ItemObject.h"
#import "AddItemViewController.h"

@interface RememberListTableViewController ()
@property (nonatomic, strong) NSMutableArray *itemsArray;
@end

@implementation RememberListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Remember List";
    [self initializeArray];
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)initializeArray{
    self.itemsArray = [NSMutableArray new];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    ItemObject *itemObject = self.itemsArray[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"Item: %@, Quantity: %ld",itemObject.itemName,itemObject.quantity];
    return cell;
}

- (IBAction)addItemAction:(id)sender{
    AddItemViewController *addItemView = [self.storyboard instantiateViewControllerWithIdentifier:@"AddItemViewController"];
    addItemView.itemsArray = self.itemsArray;
    [self.navigationController pushViewController:addItemView animated:YES];
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }   
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
