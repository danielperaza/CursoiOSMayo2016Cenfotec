//
//  DataManager.h
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/18/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject

+(NSArray*)loadCategories;
+(void)saveContext;

@end
