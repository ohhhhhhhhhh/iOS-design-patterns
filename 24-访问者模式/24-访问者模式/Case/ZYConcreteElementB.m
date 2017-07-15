//
//  ZYConcreteElementB.m
//  24-访问者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteElementB.h"
#import "ZYVisitor.h"

@implementation ZYConcreteElementB

-(void)accept:(ZYVisitor *)visitor{
    
    [visitor visitoConcreteElementB:self];
}

- (void)operationB{
    NSLog(@"其他相关方法 BBBBB");
}


@end
