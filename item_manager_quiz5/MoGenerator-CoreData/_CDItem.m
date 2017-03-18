// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CDItem.m instead.

#import "_CDItem.h"

@implementation CDItemID
@end

@implementation _CDItem

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"CDItem" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"CDItem";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"CDItem" inManagedObjectContext:moc_];
}

- (CDItemID*)objectID {
	return (CDItemID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"quantityValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"quantity"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic date;

@dynamic name;

@dynamic quantity;

- (int16_t)quantityValue {
	NSNumber *result = [self quantity];
	return [result shortValue];
}

- (void)setQuantityValue:(int16_t)value_ {
	[self setQuantity:@(value_)];
}

- (int16_t)primitiveQuantityValue {
	NSNumber *result = [self primitiveQuantity];
	return [result shortValue];
}

- (void)setPrimitiveQuantityValue:(int16_t)value_ {
	[self setPrimitiveQuantity:@(value_)];
}

@end

@implementation CDItemAttributes 
+ (NSString *)date {
	return @"date";
}
+ (NSString *)name {
	return @"name";
}
+ (NSString *)quantity {
	return @"quantity";
}
@end

