//
//  objectStorage.h
//  tryout
//
//  Created by Ed_Strickland on 16/3/26.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import <Foundation/Foundation.h>

@class object;
@interface objectStorage : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+(instancetype)sharedStore;
-(object *)createItem;



@end
