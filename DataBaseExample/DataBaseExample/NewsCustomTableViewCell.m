//
//  NewsCustomTableViewCell.m
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/25/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "NewsCustomTableViewCell.h"
#import "News.h"

@interface NewsCustomTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@end


@implementation NewsCustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}



-(void)configureCellWithNewsObject:(News*)newsObject{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd-MM-yyyy"];
    self.titleLabel.text = newsObject.titleNews;
    self.dateLabel.text = [formatter stringFromDate:newsObject.createdAt];
}

@end
