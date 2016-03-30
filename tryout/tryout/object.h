//
//  object.h
//  tryout
//
//  Created by Ed_Strickland on 16/3/26.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface object : NSObject

@property (nonatomic) int num;

-(int)number;
-(instancetype)initWithNum:(int)num;
@end
