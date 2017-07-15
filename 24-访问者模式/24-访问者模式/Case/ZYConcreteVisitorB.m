//
//  ZYConcreteVisitorB.m
//  24-访问者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteVisitorB.h"

@implementation ZYConcreteVisitorB

-(void)visitoConcreteElementA:(ZYConcreteElementA *)elementA{
    
    NSLog(@"%@ 被 %@ 访问 昂昂昂昂",NSStringFromClass([ZYConcreteElementA class]),NSStringFromClass([self class]));
}

-(void)visitoConcreteElementB:(ZYConcreteElementB *)elementB{
    
    NSLog(@"%@ 被 %@ 访问 嗯嗯嗯嗯",NSStringFromClass([ZYConcreteElementB class]),NSStringFromClass([self class]));
}

@end
