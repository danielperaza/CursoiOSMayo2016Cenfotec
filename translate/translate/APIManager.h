//
//  APIManager.h
//  translate
//
//  Created by Cesar Brenes on 7/2/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//



#import <Foundation/Foundation.h>

@protocol APIManagerDelegate <NSObject>
@required
-(void)errorFound;
@optional
-(void)languagesResultWithDictionary:(NSDictionary*)languages;
-(void)translateResult:(NSString*)resultText;
@end


@interface APIManager : NSObject
@property (assign, nonatomic) id<APIManagerDelegate> delegate;
-(void)requestTranslateWithOriginalLenguage:(NSString*)originalLenguage  destinationLanguage:(NSString*)destinationLanguage text:(NSString*)text;
-(void)getLanguages;
@end
