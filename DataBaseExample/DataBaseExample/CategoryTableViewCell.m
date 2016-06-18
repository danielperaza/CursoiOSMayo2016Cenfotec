//
//  CategoryTableViewCell.m
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/18/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "CategoryTableViewCell.h"
#import "NewsCategory.h"


@interface CategoryTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *categoryImageView;
@property (weak, nonatomic) IBOutlet UILabel *categoryNameLabel;

@end


@implementation CategoryTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


-(void)setupCellWithCategory:(NewsCategory*)category{
    self.categoryImageView.image = [UIImage imageNamed:category.imageName];
    self.categoryNameLabel.text = category.name;
}

@end
