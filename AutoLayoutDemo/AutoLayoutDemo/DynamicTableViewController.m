//
//  DynamicTableViewController.m
//  AutoLayoutDemo
//
//  Created by Carmen Popa on 21/02/2017.
//  Copyright © 2017 Carmen Popa. All rights reserved.
//

#import "DynamicTableViewController.h"
#import "DynamicTableViewCell.h"


@interface DynamicTableViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DynamicTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 100;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DynamicTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if(indexPath.row == 0) {
        cell.dynamicCellLabel.text = @"CELL 1";
    } else if(indexPath.row == 1) {
        cell.dynamicCellLabel.text = @"CELL 2 CELL 2 CELL 2 CELL 2 CELL 2 CELL 2 CELL 2 CELL 2 CELL 2 CELL 2";
    }
    return cell;
}
@end
