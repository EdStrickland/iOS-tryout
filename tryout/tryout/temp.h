//
//  temp.h
//  tryout
//
//  Created by Ed_Strickland on 16/4/2.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import <UIKit/UIKit.h>

@class object;

@interface temp : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *numLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@property (strong, nonatomic) object *item;

@end
