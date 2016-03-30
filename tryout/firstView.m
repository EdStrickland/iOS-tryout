//
//  firstView.m
//  tryout
//
//  Created by Ed_Strickland on 16/3/26.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import "firstView.h"

@implementation firstView

-(void)drawRect:(CGRect)rect{
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float radius = hypot(bounds.size.width,bounds.size.height)/2.0;
    UIBezierPath *path = [[UIBezierPath alloc]init];
    for(float i = 5; i<=radius; i+=10 ){
        [path moveToPoint:CGPointMake(center.x + i, center.y)];
        [path addArcWithCenter:center radius:i startAngle:0.0 endAngle:M_PI *2.0 clockwise:true];
    }
    path.lineWidth = 5;
    [[UIColor lightGrayColor]setStroke];
    [path stroke];
}

@end
