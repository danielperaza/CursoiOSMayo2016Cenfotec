//
//  NewsCategoryTableViewController.m
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/18/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "NewsCategoryTableViewController.h"
#import "DataManager.h"
#import "CategoryTableViewCell.h"


@interface NewsCategoryTableViewController ()
@property (nonatomic, strong) NSArray *categoryArray;
@end

@implementation NewsCategoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self mainInitializer];
}

-(void)mainInitializer{
    [self registerCustomCell];
    [self initializeCategoryArray];
}

-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:@"CategoryTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"CategoryTableViewCell"];
}

-(void)initializeCategoryArray{
    self.categoryArray = [DataManager loadCategories];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.categoryArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CategoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryTableViewCell"];
    [cell setupCellWithCategory:self.categoryArray[indexPath.row]];
    return cell;
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
