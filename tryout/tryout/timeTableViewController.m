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
#import "temp.h"
#import "headCell.h"
#import <QuartzCore/QuartzCore.h>


@implementation timeTableViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    UINib *nib = [UINib nibWithNibName:@"itemCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"itemCell"];
    
    UINib *nib1 = [UINib nibWithNibName:@"headCell" bundle:nil];
    [self.tableView registerNib:nib1 forCellReuseIdentifier:@"headCell"];
    
    self.prototypeCell = [self.tableView dequeueReusableCellWithIdentifier:@"itemCell"];
//    self.tableView.separatorStyle = UITableViewCellEditingStyleNone;
    
//    NSArray *arr = [NSArray arrayWithObjects:@"消息",@"电话",nil];
//    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:arr];
//    self.navigationItem.titleView = segment;
    self.tableView.backgroundColor = [UIColor colorWithRed:67.0f/255.0f green:67.0f/255.0f blue:67.0f/255.0f alpha:1.0f];
    
}

-(instancetype)init{
    self = [super initWithStyle:UITableViewStylePlain];
    if(self){
        self.tabBarItem.title = @"朋友圈";
        for (int i = 0; i < 7; i ++){
            [[objectStorage sharedStore] createItem];
        }
//        NSLog(@"%d",[[[objectStorage sharedStore] allItems] count]);
    }
    return self;
}

-(instancetype)initWithStyle:(UITableViewStyle)style{
    self = [super initWithStyle:style];
    if(self)
        self.tabBarItem.title = @"朋友圈";
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
    
    if(indexPath.row > 0){
        itemCell *cell = (itemCell *)[tableView dequeueReusableCellWithIdentifier:@"itemCell" forIndexPath:indexPath];
        if(indexPath.row % 2 == 0){
            cell.labelName.text = [NSString stringWithFormat:@"推送君"];
            cell.labelNum.text = [NSString stringWithFormat:@"本店于十一期间特推出一系列优惠，限时限量敬请选购！沙发：钻石品质，首领风范！床垫：华贵典雅，彰显时尚！尊贵而不失奢华，典雅却不失自然！温馨和浪漫的生活，我们与你一同创造！"];
        }else{
            cell.labelName.text = [NSString stringWithFormat:@"心灵鸡汤"];
            cell.labelNum.text = [NSString stringWithFormat:@"生活就像海洋，只有意志坚强的人才能到达彼岸"];
        }
        cell.labelContent.text = [NSString stringWithFormat:@"%d小时前",item.num];
        UIImage *image = [UIImage imageNamed:@"avatar3.jpg"];
        cell.userPic.image = image;
    
        cell.labelNum.font = [UIFont systemFontOfSize:13];
        cell.labelNum.lineBreakMode = NSLineBreakByCharWrapping;
        cell.labelNum.numberOfLines = 0;
        CGSize size = [cell.labelNum sizeThatFits:CGSizeMake(cell.labelNum.frame.size.width, MAXFLOAT)];
        cell.labelNum.frame = CGRectMake(cell.labelNum.frame.origin.x, cell.labelNum.frame.origin.y, cell.labelNum.frame.size.width, size.height);
        [cell setSeparatorInset:UIEdgeInsetsZero];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
//        tableView.separatorColor = [UIColor grayColor];
        return cell;
    }else{
        headCell *cell = (headCell *)[tableView dequeueReusableCellWithIdentifier:@"headCell" forIndexPath:indexPath];
        UIImage *background = [UIImage imageNamed:@"background-img.jpg"];
        UIImage *user = [UIImage imageNamed:@"avatar3.jpg"];
        
        cell.labelName.text = @"推送君";
        cell.labelName.shadowColor = [UIColor blackColor];
        cell.labelName.shadowOffset = CGSizeMake(0, 0.6);
        cell.backgroundPic.image = background;
        cell.userPic.image = user;
        cell.userPic.layer.borderWidth=0.3;
        cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, cell.bounds.size.width - 10);
//        tableView.separatorColor = [UIColor whiteColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    temp *tempViewController = [[temp alloc]init];
//    
//    NSArray *items = [[objectStorage sharedStore] allItems];
//    object *selectedItem = items[indexPath.row];
//    tempViewController.item = selectedItem;
//    [self.navigationController pushViewController:tempViewController animated:YES];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    itemCell *cell = self.prototypeCell;
    NSArray *items = [[objectStorage sharedStore] allItems];
    object *item = items[indexPath.row];
    if(indexPath.row > 0){
        if(indexPath.row % 2 == 0){
            cell.labelName.text = [NSString stringWithFormat:@"推送君"];
            cell.labelNum.text = [NSString stringWithFormat:@"本店于十一期间特推出一系列优惠，限时限量敬请选购！沙发：钻石品质，首领风范！床垫：华贵典雅，彰显时尚！尊贵而不失奢华，典雅却不失自然！温馨和浪漫的生活，我们与你一同创造！"];
        }else{
            cell.labelName.text = [NSString stringWithFormat:@"心灵鸡汤"];
            cell.labelNum.text = [NSString stringWithFormat:@"生活就像海洋，只有意志坚强的人才能到达彼岸"];
        }
        cell.labelContent.text = [NSString stringWithFormat:@"%d小时前",item.num];
        UIImage *image = [UIImage imageNamed:@"avatar3.jpg"];
        cell.userPic.image = image;
    
        cell.labelNum.font = [UIFont systemFontOfSize:13];
        cell.labelNum.lineBreakMode = NSLineBreakByWordWrapping;
        cell.labelNum.numberOfLines = 0;
        CGSize size = [cell.labelNum sizeThatFits:CGSizeMake(cell.labelNum.frame.size.width, MAXFLOAT)];
        cell.labelNum.frame = CGRectMake(cell.labelNum.frame.origin.x, cell.labelNum.frame.origin.y, cell.labelNum.frame.size.width, size.height);
        tableView.separatorInset = UIEdgeInsetsMake(0,0,0,0);
        CGSize size1 = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
        NSLog(@"h = %f",size.height+1);
        return 1 + size1.height;
    }else{
        CGSize size1 = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
        return 100 + size1.height;
    }
}



@end
