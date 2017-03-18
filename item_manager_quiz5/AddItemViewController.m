//
//  AddItemViewController.m
//  item_manager_quiz5
//
//  Created by Christian Deliens on 3/18/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "AddItemViewController.h"
#import "ItemsViewController.h"
#import "CoreDataManager.h"
#import "CDItem.h"

@interface AddItemViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nameProduct;
@property (strong, nonatomic) IBOutlet UITextField *quantityProduct;

@end

@implementation AddItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSaveButton];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addSaveButton{
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveItemAction)];
    self.navigationItem.rightBarButtonItem = saveButton;
}
-(void)saveItemAction{
    NSDate *now = [NSDate date];
    NSInteger quantity = [self.quantityProduct.text integerValue];
    [CDItem insertItemWithName:self.nameProduct.text quantity:quantity date:now];
    [CoreDataManager saveContext];
    
    [self.navigationController popViewControllerAnimated:true];
}

@end
