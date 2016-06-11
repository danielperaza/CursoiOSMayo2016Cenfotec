//
//  ViewController.m
//  popoverExample
//
//  Created by Cesar Brenes on 6/4/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "WellcomeViewController.h"
#import "EnterNameViewController.h"
#import "BIZPopupViewController.h"

@interface WellcomeViewController ()<EnterNameDelegate>
@property (weak, nonatomic) IBOutlet UILabel *yourNameLabel;
@property (nonatomic, strong) BIZPopupViewController *popover;
@property (nonatomic, strong)  EnterNameViewController *enterNameViewController;
@end

@implementation WellcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeEnterViewController];
}

-(void)initializeEnterViewController{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EnterNameViewController *enterNameViewController = [storyboard instantiateViewControllerWithIdentifier:@"EnterNameViewController"];
    enterNameViewController.delegate = self;
}

-(void)presentPopover{
    self.popover = [[BIZPopupViewController alloc] initWithContentViewController:self.enterNameViewController contentSize:CGSizeMake(([UIScreen mainScreen].bounds.size.width)*0.80,([UIScreen mainScreen].bounds.size.height)*0.75)];
    [self presentViewController:self.popover animated:NO completion:nil];
}


- (IBAction)enterYourName:(UIButton *)sender {
    [self presentPopover];
}

-(void)getName:(NSString *)name{
    self.yourNameLabel.text = [NSString stringWithFormat:@"Hola\n%@",name];
    [self.popover dismissPopupViewControllerAnimated:YES];
}


@end
