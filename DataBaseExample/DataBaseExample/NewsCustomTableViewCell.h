//
//  NewsCustomTableViewCell.h
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/25/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import <UIKit/UIKit.h>
@class News;
@interface NewsCustomTableViewCell : UITableViewCell
-(void)configureCellWithNewsObject:(News*)newsObject;

@end
