//
//  ZYDecorator.m
//  03-装饰模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYDecorator.h"

@implementation ZYDecorator

-(void)decorator:(ZYDecoratorPerson *)person{
    
    self.person = person;
}

-(void)showLog{
    if (self.person) {
         [self.person showLog];
    }
}

@end
