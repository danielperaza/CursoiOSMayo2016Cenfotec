//
//  APIManager.m
//  translate
//
//  Created by Cesar Brenes on 7/2/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "APIManager.h"
#import <AFNetworking.h>


#define API_KEY @"yPHXzEpGkumshd0k9v6O6PaFlBQQp18B766jsnJ4STUtwQtdnE"
#define API_URL @"https://gybra-trans-lator.p.mashape.com/"


@implementation APIManager

-(AFHTTPSessionManager*)createSessionManager{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:API_KEY forHTTPHeaderField:@"X-Mashape-Key"];
    return manager;
}

-(void)getLanguages{
    AFHTTPSessionManager *manager = [self createSessionManager];
    NSString *url = [NSString stringWithFormat:@"%@languages",API_URL];
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [self processLanguagesRequestWithDictionary:responseObject];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (self.delegate) {
            [self.delegate errorFound];
        }
    }];
}

-(void)requestTranslateWithOriginalLenguage:(NSString*)originalLenguage  destinationLanguage:(NSString*)destinationLanguage text:(NSString*)text{
    AFHTTPSessionManager *manager = [self createSessionManager];
    NSString *url = [NSString stringWithFormat:@"%@translate/%@/%@/%@",API_URL,originalLenguage,destinationLanguage,text];
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [self processTranslation:[responseObject valueForKey:@"text"]];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (self.delegate) {
            [self.delegate errorFound];
        }
    }];
}

-(void)processTranslation:(NSArray*)translationText{
    if (translationText.count>0 && self.delegate) {
        [self.delegate translateResult:translationText.firstObject];
    }
}


-(void)processLanguagesRequestWithDictionary:(NSDictionary*)response{
    if (self.delegate) {
        [self.delegate languagesResultWithDictionary:response[@"langs"]];
    }
}


@end
