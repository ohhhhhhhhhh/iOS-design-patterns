//
//  ZYFactoryMinus.m
//  05-工厂模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYFactoryMinus.h"
#import "ZYCalculateMinus.h"

@implementation ZYFactoryMinus

+(id<ZYCalculate>)createCalculate{
    
    return [[ZYCalculateMinus alloc]init];
}

@end
