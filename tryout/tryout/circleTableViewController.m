//
//  timeTableViewController.m
//  tryout
//
//  Created by Ed_Strickland on 16/3/26.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import "circleTableViewController.h"
#import "timeTableViewController.h"
#import "itemCell.h"
#import "objectStorage.h"
#import "object.h"
#import "temp.h"
#import "tableCell.h"



@implementation circleTableViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    UINib *nib = [UINib nibWithNibName:@"itemCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"itemCell"];
//    NSArray *arr = [NSArray arrayWithObjects:@"消息",@"电话",nil];
//    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:arr];
//    self.navigationItem.titleView = segment;
}

-(instancetype)init{
    self = [super initWithStyle:UITableViewStylePlain];
    if(self){
        self.tabBarItem.title = @"发现";
//        for (int i = 0; i < 6; i ++){
//            [[objectStorage sharedStore] createItem];
//        }
        //        NSLog(@"%d",[[[objectStorage sharedStore] allItems] count]);
    }
    return self;
}

-(instancetype)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if(self)
        self.tabBarItem.title = @"发现";
    return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[objectStorage sharedStore] allItems]count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    //    itemCell *cell = [[itemCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"itemCell"];
//    NSArray *items = [[objectStorage sharedStore] allItems];
//    object *item = items[indexPath.row];
    tableCell *cell = [[tableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"friend"];
    cell.textLabel.text = @"朋友圈";
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    timeTableViewController *tempViewController = [[timeTableViewController alloc]init];
    tempViewController.navigationItem.title = @"朋友圈";
    [tempViewController setHidesBottomBarWhenPushed:YES];
    [self.navigationController pushViewController:tempViewController animated:YES];
}
@end
