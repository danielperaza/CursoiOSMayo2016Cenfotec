// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to NewsCategory.m instead.

#import "_NewsCategory.h"

const struct NewsCategoryAttributes NewsCategoryAttributes = {
	.createdAt = @"createdAt",
	.imageName = @"imageName",
	.name = @"name",
	.order = @"order",
};

const struct NewsCategoryRelationships NewsCategoryRelationships = {
	.news = @"news",
};

@implementation NewsCategoryID
@end

@implementation _NewsCategory

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"NewsCategory" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"NewsCategory";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"NewsCategory" inManagedObjectContext:moc_];
}

- (NewsCategoryID*)objectID {
	return (NewsCategoryID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"orderValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"order"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic createdAt;

@dynamic imageName;

@dynamic name;

@dynamic order;

- (int16_t)orderValue {
	NSNumber *result = [self order];
	return [result shortValue];
}

- (void)setOrderValue:(int16_t)value_ {
	[self setOrder:@(value_)];
}

- (int16_t)primitiveOrderValue {
	NSNumber *result = [self primitiveOrder];
	return [result shortValue];
}

- (void)setPrimitiveOrderValue:(int16_t)value_ {
	[self setPrimitiveOrder:@(value_)];
}

@dynamic news;

- (NSMutableSet*)newsSet {
	[self willAccessValueForKey:@"news"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"news"];

	[self didAccessValueForKey:@"news"];
	return result;
}

@end

