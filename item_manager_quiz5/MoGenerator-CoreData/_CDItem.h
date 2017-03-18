// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDItem.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface CDItemID : NSManagedObjectID {}
@end

@interface _CDItem : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CDItemID *objectID;

@property (nonatomic, strong, nullable) NSDate* date;

@property (nonatomic, strong, nullable) NSString* name;

@property (nonatomic, strong, nullable) NSNumber* quantity;

@property (atomic) int16_t quantityValue;
- (int16_t)quantityValue;
- (void)setQuantityValue:(int16_t)value_;

@end

@interface _CDItem (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSDate*)primitiveDate;
- (void)setPrimitiveDate:(nullable NSDate*)value;

- (nullable NSString*)primitiveName;
- (void)setPrimitiveName:(nullable NSString*)value;

- (nullable NSNumber*)primitiveQuantity;
- (void)setPrimitiveQuantity:(nullable NSNumber*)value;

- (int16_t)primitiveQuantityValue;
- (void)setPrimitiveQuantityValue:(int16_t)value_;

@end

@interface CDItemAttributes: NSObject 
+ (NSString *)date;
+ (NSString *)name;
+ (NSString *)quantity;
@end

NS_ASSUME_NONNULL_END
