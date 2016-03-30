//
//  object.m
//  tryout
//
//  Created by Ed_Strickland on 16/3/26.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import "object.h"

@implementation object

-(instancetype)initWithNum:(int)num{
    self = [super init];
    self.num = num;
    return self;
}

-(int)number{
    return self.num;
}
@end
