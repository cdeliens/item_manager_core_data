//
//  ItemCustomTableTableViewCell.h
//  item_manager_quiz5
//
//  Created by Christian Deliens on 3/18/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CDItem;

@interface ItemCustomTableTableViewCell : UITableViewCell
-(void)setupCellWithItem:(CDItem*)item;
@end
