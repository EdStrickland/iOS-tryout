//
//  itemCell.h
//  tryout
//
//  Created by Ed_Strickland on 16/3/30.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface itemCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UILabel *labelContent;
@property (weak, nonatomic) IBOutlet UILabel *labelNum;
@property (weak, nonatomic) IBOutlet UIImageView *userPic;

@end
