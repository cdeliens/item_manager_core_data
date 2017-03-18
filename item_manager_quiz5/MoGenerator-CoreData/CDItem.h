#import "_CDItem.h"
#import <MagicalRecord/MagicalRecord.h>

@interface CDItem : _CDItem
// Custom logic goes here.
+(id)insertItemWithName:(NSString*)name quantity:(NSInteger)quantity date:(NSDate *)date;
@end
