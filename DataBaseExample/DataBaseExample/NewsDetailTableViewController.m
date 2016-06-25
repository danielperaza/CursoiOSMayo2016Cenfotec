//
//  NewsDetailTableViewController.m
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/25/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "NewsDetailTableViewController.h"
#import "News.h"
#import "NewsCategory.h"
#import "DataManager.h"

@interface NewsDetailTableViewController ()<UITextFieldDelegate, UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *detailTextView;

@end

@implementation NewsDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setDelegates];
    [self addSaveButtonToNavigationBar];
}

-(void)setDelegates{
    self.titleTextField.delegate = self;
    self.detailTextView.delegate = self;
    [self.titleTextField becomeFirstResponder];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    if ([self.titleTextField isFirstResponder]) {
        [self.detailTextView becomeFirstResponder];
    }
    return YES;
}

- (BOOL)textView:(UITextView *)txtView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if( [text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound ) {
        //        user is writting
        return YES;
    }
    //    user pressed done button
    [txtView resignFirstResponder];
    [self saveNews];
    return NO;
}


-(void)addSaveButtonToNavigationBar{
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveNews)];
    self.navigationItem.rightBarButtonItem = saveButton;
}


-(void)saveNews{
    [News initWithTitle:self.titleTextField.text description:self.detailTextView.text category:self.categorySelected];
    [DataManager saveContext];
    [self.navigationController popViewControllerAnimated:YES];
}


@end
