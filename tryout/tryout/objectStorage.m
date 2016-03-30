//
//  objectStorage.m
//  tryout
//
//  Created by Ed_Strickland on 16/3/26.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import "objectStorage.h"
#import "object.h"

@interface objectStorage()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation objectStorage

+(instancetype)sharedStore{
    static objectStorage *objectStore = nil;
    
    if(!objectStore){
        objectStore = [[self alloc] initPrivate];
    }
    return objectStore;
}

-(instancetype)init{
    @throw [NSException exceptionWithName:@"Singleton" reason:@"Use + [objectStorage objectStore]" userInfo:nil];
    return nil;
    
}

-(instancetype)initPrivate{
    self = [super init];
    if(self){
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSArray *)allItems{
    return self.privateItems;
}

-(object *)createItem{
    object *item = [[object alloc] initWithNum:1];
    int a = item.num;
    NSLog(@"%d",a);
    [self.privateItems addObject:item];
    return item;
}



@end
