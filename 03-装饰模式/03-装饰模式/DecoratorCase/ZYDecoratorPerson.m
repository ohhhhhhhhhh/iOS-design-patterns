//
//  ZYDecoratorPerson.m
//  03-装饰模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYDecoratorPerson.h"

@implementation ZYDecoratorPerson

-(void)showLog{
    
    NSLog(@"装饰的是 %@",self.name);
}

@end

