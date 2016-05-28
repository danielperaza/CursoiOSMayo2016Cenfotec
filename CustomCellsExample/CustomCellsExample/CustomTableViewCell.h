//
//  CustomTableViewCell.h
//  CustomCellsExample
//
//  Created by Cesar Brenes on 5/28/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@property (weak, nonatomic) IBOutlet UILabel *isPairLabel;


@end
