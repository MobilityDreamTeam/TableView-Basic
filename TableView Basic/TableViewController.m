//
//  TableViewController.m
//  TableView Basic
//
//  Created by Per Friis on 18/03/15.
//  Copyright (c) 2015 Mobility Dream Team aps. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property (nonatomic, readonly) NSArray *words;
@end

@implementation TableViewController
-(NSArray *)words{
    return @[@"this",@"is",@"a",@"list",@"of",@"words"];
}


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.words.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.words objectAtIndex:indexPath.row];
    
    return cell;
}

@end
