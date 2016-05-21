//
//  SecondViewController.m
//  FirstClass
//
//  Created by Cesar Brenes on 5/14/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.  
    self.nameLabel.text = [NSString stringWithFormat:@"Wellcome %@",self.name];
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
