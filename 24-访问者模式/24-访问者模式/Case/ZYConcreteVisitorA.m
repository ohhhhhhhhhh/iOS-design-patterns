//
//  ZYConcreteVisitorA.m
//  24-访问者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteVisitorA.h"

@implementation ZYConcreteVisitorA

-(void)visitoConcreteElementA:(ZYConcreteElementA *)elementA{
    
    NSLog(@"%@ 被 %@ 访问 哈哈哈哈",NSStringFromClass([ZYConcreteElementA class]),NSStringFromClass([self class]));
}

-(void)visitoConcreteElementB:(ZYConcreteElementB *)elementB{
    
    NSLog(@"%@ 被 %@ 访问 哦哦哦哦",NSStringFromClass([ZYConcreteElementB class]),NSStringFromClass([self class]));
}

@end
