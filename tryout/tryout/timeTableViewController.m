//
//  timeTableViewController.m
//  tryout
//
//  Created by Ed_Strickland on 16/3/26.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import "timeTableViewController.h"
#import "itemCell.h"
#import "objectStorage.h"
#import "object.h"



@implementation timeTableViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    UINib *nib = [UINib nibWithNibName:@"itemCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"itemCell"];
}

-(instancetype)init{
    self = [super initWithStyle:UITableViewStylePlain];
    if(self){
        self.tabBarItem.title = @"Time Table";
        for (int i = 0; i < 6; i ++){
            [[objectStorage sharedStore] createItem];
        }
//        NSLog(@"%d",[[[objectStorage sharedStore] allItems] count]);
    }
    return self;
}

-(instancetype)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if(self)
        self.tabBarItem.title = @"Time Table";
    return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[objectStorage sharedStore] allItems] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
//    itemCell *cell = [[itemCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"itemCell"];
    NSArray *items = [[objectStorage sharedStore] allItems];
    object *item = items[indexPath.row];
    itemCell *cell = (itemCell *)[tableView dequeueReusableCellWithIdentifier:@"itemCell" forIndexPath:indexPath];
    cell.labelName.text = [NSString stringWithFormat:@"%d",item.num];
    cell.labelNum.text = [NSString stringWithFormat:@"%d",item.num];
    cell.labelContent.text = [NSString stringWithFormat:@"%d",item.num];
//    cell.textLabel.text = [NSString stringWithFormat:@"%d",item.num];
    
    return cell;
}

@end
