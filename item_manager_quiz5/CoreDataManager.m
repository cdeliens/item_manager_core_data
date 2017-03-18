//
//  CoreDataManager.m
//  News
//
//  Created by Cesar Brenes on 3/11/17.
//  Copyright © 2017 Veux Labs. All rights reserved.
//

#import "CoreDataManager.h"
#import <MagicalRecord/MagicalRecord.h>
#import "CDItem.h"


@implementation CoreDataManager

+ (void)saveContext {
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError *error) {
        if (contextDidSave) {
            NSLog(@"You successfully saved your context.");
        } else if (error) {
            NSLog(@"Error saving context: %@", error.description);
        }
    }];
}


+(NSArray*)getAllItems{
    NSArray *items = [CDItem MR_findAll];

    return items;
}


@end
