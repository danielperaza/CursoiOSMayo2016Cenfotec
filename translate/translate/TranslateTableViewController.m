//
//  TranslateTableViewController.m
//  translate
//
//  Created by Cesar Brenes on 7/2/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "TranslateTableViewController.h"
#import <AFNetworking.h>
#import "APIManager.h"
#import "UIView+RNActivityView.h"

@interface TranslateTableViewController ()<APIManagerDelegate>
@property (nonatomic, strong) APIManager *apiManager;
@property (nonatomic, strong) NSMutableArray *languagesArray;

@end

@implementation TranslateTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self mainInitializer];
}

-(void)test{
    [self.apiManager requestTranslateWithOriginalLenguage:@"es" destinationLanguage:@"en" text:@"Hola-mundo"];
    
}


#pragma mark - INITIALIZER
-(void)mainInitializer{
    self.apiManager = [APIManager new];
    self.apiManager.delegate = self;
    [self.apiManager getLanguages];
    [self.view showActivityViewWithLabel:@"Loading lenguages"];
    self.languagesArray = [NSMutableArray new];
}

#pragma mark - API MANAGER DELEGATE
-(void)errorFound{
    [self showErrorMessage];
}

-(void)languagesResultWithDictionary:(NSDictionary *)languages{
    for (NSString* key in languages) {
        NSDictionary *auxDictionary = @{@"dirs":key, @"langs":[languages valueForKey:key]};
        [self.languagesArray addObject:auxDictionary];
    }
    [self showCompletedMessage];
}


-(void)translateResult:(NSString *)resultText{
    NSLog(@"%@",resultText);
    [self showCompletedMessage];
}




#pragma mark - HELPERS

-(void)showErrorMessage{
    [self showResultMessageWithTitle:@"Error Found" imageName:@"error"];
}

-(void)showCompletedMessage{
    [self showResultMessageWithTitle:@"Completed" imageName:@"successfully"];
}

-(void)showResultMessageWithTitle:(NSString*)title imageName:(NSString*)imageName{
    [self.view showActivityViewWithLabel:title image:[UIImage imageNamed:imageName]];
    [self.view hideActivityViewWithAfterDelay:3.0];
}



- (IBAction)firstLanguage:(UIButton *)sender {
}

- (IBAction)secondLanguage:(UIButton *)sender {
}

- (IBAction)changeLanguage:(UIButton *)sender {
}



@end
