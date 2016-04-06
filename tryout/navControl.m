//
//  navControl.m
//  tryout
//
//  Created by Ed_Strickland on 16/4/2.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import "navControl.h"

@interface navControl ()

@end

@implementation navControl

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.barTintColor = [UIColor colorWithRed:67.0f/255.0f green:167.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
    self.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName]];
    self.navigationBar.layer.borderWidth = 0.0;
//    if ([UINavigationBar instancesRespondToSelector:@selector(setShadowImage:)]){
//        [[UINavigationBar appearance] setShadowImage:[UIImage imageWithColor:[UIColor clearColor] size:CGSizeMake(320, 3)]];
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(instancetype)initWithTitle:(NSString *)title{
//    self =  [super init];
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
//    [label setTextColor:[UIColor whiteColor]];
//    [label setText:title];
//    label.font = [UIFont boldSystemFontOfSize:20];
//    self.navigationItem.titleView = label;
//    return self;
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
