//
//  NewsDetailTableViewController.h
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/25/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NewsCategory;

@interface NewsDetailTableViewController : UITableViewController

@property (nonatomic, strong) NewsCategory *categorySelected;


@end
