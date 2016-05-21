//
//  ViewController.m
//  FirstClass
//
//  Created by Cesar Brenes on 5/14/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

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
- (IBAction)callNextScreen:(id)sender {
    NSString *name = self.nameTextField.text;
    NSLog(@"Su nombre es: %@",name);
    SecondViewController *secondView = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    secondView.name = name;
    [self.navigationController pushViewController:secondView animated:YES];
}



@end
