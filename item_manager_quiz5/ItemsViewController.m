//
//  ItemsViewController.m
//  item_manager_quiz5
//
//  Created by Christian Deliens on 3/18/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "ItemsViewController.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "ItemCustomTableTableViewCell.h"
#import "AddItemViewController.h"
#import "CoreDataManager.h"
#import "CDItem.h"

@interface ItemsViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *itemsArray;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[ItemCustomTableTableViewCell getClassName]];
    [self addItemButton];
    self.itemsArray = [CoreDataManager getAllItems];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    self.itemsArray = [CoreDataManager getAllItems];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.itemsArray.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ItemCustomTableTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[ItemCustomTableTableViewCell getClassName]];
    CDItem *currentItem = self.itemsArray[indexPath.row];
    [cell setupCellWithItem:currentItem];
    return cell;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}

-(void)addItemButton{
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItemsAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}
-(void)addItemsAction{
    AddItemViewController *addItemTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AddItemViewController"];
    
    [self.navigationController pushViewController:addItemTableViewController animated:true];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
