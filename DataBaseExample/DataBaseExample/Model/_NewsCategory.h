// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to NewsCategory.h instead.

@import CoreData;

extern const struct NewsCategoryAttributes {
	__unsafe_unretained NSString *createdAt;
	__unsafe_unretained NSString *imageName;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *order;
} NewsCategoryAttributes;

extern const struct NewsCategoryRelationships {
	__unsafe_unretained NSString *news;
} NewsCategoryRelationships;

@class News;

@interface NewsCategoryID : NSManagedObjectID {}
@end

@interface _NewsCategory : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) NewsCategoryID* objectID;

@property (nonatomic, strong) NSDate* createdAt;

//- (BOOL)validateCreatedAt:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* imageName;

//- (BOOL)validateImageName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* order;

@property (atomic) int16_t orderValue;
- (int16_t)orderValue;
- (void)setOrderValue:(int16_t)value_;

//- (BOOL)validateOrder:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *news;

- (NSMutableSet*)newsSet;

@end

@interface _NewsCategory (NewsCoreDataGeneratedAccessors)
- (void)addNews:(NSSet*)value_;
- (void)removeNews:(NSSet*)value_;
- (void)addNewsObject:(News*)value_;
- (void)removeNewsObject:(News*)value_;

@end

@interface _NewsCategory (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreatedAt;
- (void)setPrimitiveCreatedAt:(NSDate*)value;

- (NSString*)primitiveImageName;
- (void)setPrimitiveImageName:(NSString*)value;

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSNumber*)primitiveOrder;
- (void)setPrimitiveOrder:(NSNumber*)value;

- (int16_t)primitiveOrderValue;
- (void)setPrimitiveOrderValue:(int16_t)value_;

- (NSMutableSet*)primitiveNews;
- (void)setPrimitiveNews:(NSMutableSet*)value;

@end
