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

@interface WellcomeViewController ()
@property (weak, nonatomic) IBOutlet UILabel *yourNameLabel;
@property (nonatomic, strong) BIZPopupViewController *popover;
@property (nonatomic, strong)  EnterNameViewController *enterNameViewController;
@end

@implementation WellcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeEnterViewController];
    [self registerNotifications];
}

-(void)dealloc{
    [self removeNotifications];
}

-(void)registerNotifications{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getName:) name:@"GET_NAME_NOTIFICATION" object:nil];
    
}

-(void)removeNotifications{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"GET_NAME_NOTIFICATION" object:nil];
}


-(void)initializeEnterViewController{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.enterNameViewController = [storyboard instantiateViewControllerWithIdentifier:@"EnterNameViewController"];
}

-(void)presentPopover{
    self.popover = [[BIZPopupViewController alloc] initWithContentViewController:self.enterNameViewController contentSize:CGSizeMake(([UIScreen mainScreen].bounds.size.width)*0.80,([UIScreen mainScreen].bounds.size.height)*0.75)];
    [self presentViewController:self.popover animated:NO completion:nil];
}


- (IBAction)enterYourName:(UIButton *)sender {
    [self presentPopover];
}

-(void)getName:(NSNotification*)notification{
    NSDictionary *userInfo = notification.userInfo;
    NSString *name = userInfo[@"name"];
    self.yourNameLabel.text = [NSString stringWithFormat:@"Hola\n%@",name];
    [self.popover dismissPopupViewControllerAnimated:YES];
}


//add
//[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(synchronizationHasFinished:) name:NOTIFICATION_NAME_TO_INFORM_TO_THE_APP_CAN_RELOAD_THE_UI_BECAUSE_THE_SINCHRONIZATION_HAS_FINISHED
//                                           object:nil];


//remove
// [[NSNotificationCenter defaultCenter] removeObserver:NOTIFICATION_NAME_TO_INFORM_TO_THE_APP_CAN_RELOAD_THE_UI_BECAUSE_THE_SINCHRONIZATION_HAS_FINISHED];


//[[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_NAME_RESULT_SCAN_FROM_SYNC_SERVICE object:nil userInfo:listOfMTsAndStates];

@end
