// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to News.h instead.

@import CoreData;

extern const struct NewsAttributes {
	__unsafe_unretained NSString *contentNews;
	__unsafe_unretained NSString *createdAt;
	__unsafe_unretained NSString *titleNews;
} NewsAttributes;

extern const struct NewsRelationships {
	__unsafe_unretained NSString *category;
} NewsRelationships;

@class NewsCategory;

@interface NewsID : NSManagedObjectID {}
@end

@interface _News : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) NewsID* objectID;

@property (nonatomic, strong) NSString* contentNews;

//- (BOOL)validateContentNews:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* createdAt;

//- (BOOL)validateCreatedAt:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* titleNews;

//- (BOOL)validateTitleNews:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NewsCategory *category;

//- (BOOL)validateCategory:(id*)value_ error:(NSError**)error_;

@end

@interface _News (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveContentNews;
- (void)setPrimitiveContentNews:(NSString*)value;

- (NSDate*)primitiveCreatedAt;
- (void)setPrimitiveCreatedAt:(NSDate*)value;

- (NSString*)primitiveTitleNews;
- (void)setPrimitiveTitleNews:(NSString*)value;

- (NewsCategory*)primitiveCategory;
- (void)setPrimitiveCategory:(NewsCategory*)value;

@end
