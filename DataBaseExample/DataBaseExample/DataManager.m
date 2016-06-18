//
//  DataManager.m
//  DataBaseExample
//
//  Created by Cesar Brenes on 6/18/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "DataManager.h"
#import <MagicalRecord/MagicalRecord.h>
#import "NewsCategory.h"

@implementation DataManager

//incident


+(NSArray*)loadCategories{
    NSArray *categories = [NewsCategory MR_findAll];
    if (categories.count==0) {
        [DataManager createCategories];
        return [DataManager loadCategories];
    }
    return categories;
}

+(void)createCategories{
    [NewsCategory initWithImageName:@"tecnologia" name:@"Tecnología" order:4];
    [NewsCategory initWithImageName:@"sucesos" name:@"Sucesos" order:3];
    [NewsCategory initWithImageName:@"economia" name:@"Econonomía" order:2];
    [NewsCategory initWithImageName:@"deportes" name:@"Deportes" order:1];
    [DataManager saveContext];
}

+ (void)saveContext {
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError *error) {
        if (contextDidSave) {
            NSLog(@"You successfully saved your context.");
        } else if (error) {
            NSLog(@"Error saving context: %@", error.description);
        }
    }];
}




@end
