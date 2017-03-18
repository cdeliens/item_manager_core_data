//
//  ItemCustomTableTableViewCell.m
//  item_manager_quiz5
//
//  Created by Christian Deliens on 3/18/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "ItemCustomTableTableViewCell.h"
#import "CDItem.h"

@interface ItemCustomTableTableViewCell()

@property (strong, nonatomic) IBOutlet UILabel *nameProduct;

@property (strong, nonatomic) IBOutlet UILabel *quantity;

@property (strong, nonatomic) IBOutlet UILabel *date;

@end

@implementation ItemCustomTableTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setupCellWithItem:(CDItem*)item{
    
    self.nameProduct.text = item.name;
    
    self.quantity.text = [NSString stringWithFormat:@"%@", item.quantity];
    
    NSString *dateString =
    [NSDateFormatter localizedStringFromDate:item.date
                                   dateStyle:NSDateFormatterShortStyle
                                   timeStyle:NSDateFormatterShortStyle];
    self.date.text = dateString;
}

@end
