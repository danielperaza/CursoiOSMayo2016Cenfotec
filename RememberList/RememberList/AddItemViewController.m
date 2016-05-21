//
//  AddItemViewController.m
//  RememberList
//
//  Created by Cesar Brenes on 5/21/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "AddItemViewController.h"
#import "ItemObject.h"

@interface AddItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *itemNameTextField;



@property (weak, nonatomic) IBOutlet UITextField *quantityTextField;

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addRightButtonItem];
}

-(void)addRightButtonItem{
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveItem)];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
}


-(void)saveItem{
    ItemObject *newItem = [[ItemObject alloc] initWithName:self.itemNameTextField.text quantity:[self.quantityTextField.text integerValue]];
    [self.itemsArray addObject:newItem];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
