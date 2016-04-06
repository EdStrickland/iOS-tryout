//
//  temp.m
//  tryout
//
//  Created by Ed_Strickland on 16/4/2.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import "temp.h"
#import "object.h"

@interface temp ()

@end

@implementation temp

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    object *item = self.item;
    
    self.nameLabel.text = [NSString stringWithFormat:@"%d",item.num];
    self.contentLabel.text = [NSString stringWithFormat:@"%d",item.num];
    self.numLabel.text = [NSString stringWithFormat:@"%d",item.num];
    
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
