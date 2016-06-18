#import "NewsCategory.h"
#import <MagicalRecord/MagicalRecord.h>

@interface NewsCategory ()

// Private interface goes here.

@end

@implementation NewsCategory

// Custom logic goes here.

+(id)initWithImageName:(NSString*)imageName name:(NSString*)name order:(NSInteger)order{
    NewsCategory *category = [NewsCategory MR_createEntity];
    category.createdAt = [NSDate date];
    category.imageName = imageName;
    category.name = name;
    category.orderValue = order;
    return category;
}

@end
