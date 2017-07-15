//
//  ZYPerson.m
//  12-状态模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYPerson.h"
#import "ZYGetUp.h"

@implementation ZYPerson

-(void)doSth{
    
    [self.state doSth:self];
}

-(instancetype)init{
    
    if (self = [super init]) {
        // 初始化一个状态
        _state = [[ZYGetUp alloc]init];
    }
    return self;
}

-(NSString *)name{
    return @"ohhh";
}

@end
