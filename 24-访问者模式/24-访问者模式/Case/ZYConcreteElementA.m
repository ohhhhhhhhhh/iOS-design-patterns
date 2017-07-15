//
//  ZYConcreteElementA.m
//  24-访问者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteElementA.h"
#import "ZYVisitor.h"

@implementation ZYConcreteElementA

-(void)accept:(ZYVisitor *)visitor{
    
    [visitor visitoConcreteElementA:self];
}

- (void)operationA{
    NSLog(@"其他相关方法 AAAAA");
}

@end
