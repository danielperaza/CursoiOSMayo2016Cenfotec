//
//  ViewController.m
//  hideKeyboard
//
//  Created by Cesar Brenes on 6/11/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *exampleTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissKeyboard:(id)sender {
    [self.view endEditing:YES];
    
}



@end
