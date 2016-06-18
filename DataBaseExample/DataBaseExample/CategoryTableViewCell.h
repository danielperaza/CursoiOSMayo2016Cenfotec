//
//  CategoryTableViewCell.h
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/18/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NewsCategory;
@interface CategoryTableViewCell : UITableViewCell
-(void)setupCellWithCategory:(NewsCategory*)category;
@end
