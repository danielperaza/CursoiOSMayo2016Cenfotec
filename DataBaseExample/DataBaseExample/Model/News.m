#import "News.h"
#import <MagicalRecord/MagicalRecord.h>
#import "NewsCategory.h"

@interface News ()

// Private interface goes here.

@end

@implementation News

+(id)initWithTitle:(NSString*)title description:(NSString*)description category:(NewsCategory*)category{
    News *news = [News MR_createEntity];
    news.createdAt = [NSDate date];
    news.titleNews = title;
    news.contentNews = description;
    news.category = category;
    return news;
}

@end
