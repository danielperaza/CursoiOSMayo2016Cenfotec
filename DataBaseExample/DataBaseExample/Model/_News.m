// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to News.m instead.

#import "_News.h"

const struct NewsAttributes NewsAttributes = {
	.contentNews = @"contentNews",
	.createdAt = @"createdAt",
	.titleNews = @"titleNews",
};

const struct NewsRelationships NewsRelationships = {
	.category = @"category",
};

@implementation NewsID
@end

@implementation _News

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"News" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"News";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"News" inManagedObjectContext:moc_];
}

- (NewsID*)objectID {
	return (NewsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic contentNews;

@dynamic createdAt;

@dynamic titleNews;

@dynamic category;

@end

