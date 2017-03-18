#import "CDItem.h"

@interface CDItem ()

// Private interface goes here.

@end

@implementation CDItem

+(id)insertItemWithName:(NSString*)name quantity:(NSInteger)quantity date:(NSDate *)date{
    CDItem *item = [CDItem MR_createEntity];
    item.name = name;
    item.quantityValue = quantity;
    item.date = date;
    return item;
}

@end
