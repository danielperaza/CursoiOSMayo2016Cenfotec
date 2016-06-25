//
//  NewsTableViewController.m
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/25/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "NewsTableViewController.h"
#import "NewsCustomTableViewCell.h"
#import "News.h"
#import "NewsCategory.h"
#import "NewsDetailTableViewController.h"
#import <MagicalRecord/MagicalRecord.h>
#import "DataManager.h"

@interface NewsTableViewController ()
@property (nonatomic, strong) NSMutableArray *newsArray;
@end

@implementation NewsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self mainInitializer];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    [self loadNews];
}


-(void)mainInitializer{
    [self registerCell];
    [self addNewsButtonToNavigationBar];
}

-(void)addNewsButtonToNavigationBar{
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNews)];
    self.navigationItem.rightBarButtonItem = saveButton;
}

-(void)registerCell{
    UINib *nib = [UINib nibWithNibName:@"NewsCustomTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"NewsCustomTableViewCell"];
}

-(void)loadNews{
    self.title = self.categorySelected.name;
    self.newsArray = [[self.categorySelected.news allObjects] mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"createdAt" ascending:YES];
    [self.newsArray sortUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    
    
    //    query example
    //    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.titleNews = %@",@"Prueba 1"];
    //    NSArray *result = [self.newsArray filteredArrayUsingPredicate:predicate];
    //    self.newsArray = [result mutableCopy];
    
    
    [self.tableView reloadData];
}


-(void)addNews{
    NewsDetailTableViewController *newsDetailView = [self.storyboard instantiateViewControllerWithIdentifier:@"NewsDetailTableViewController"];
    newsDetailView.categorySelected = self.categorySelected;
    [self.navigationController pushViewController:newsDetailView animated:YES];
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.newsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCustomTableViewCell" forIndexPath:indexPath];
    News *newsObject = self.newsArray[indexPath.row];
    [cell configureCellWithNewsObject:newsObject];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        News *currentNews = self.newsArray[indexPath.row];
        [currentNews MR_deleteEntity];
        [self.newsArray removeObjectAtIndex:indexPath.row];
        [DataManager saveContext];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


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
