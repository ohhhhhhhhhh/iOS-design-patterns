//
//  ZYFactoryDivide.m
//  05-工厂模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYFactoryDivide.h"
#import "ZYCalculateDivide.h"

@implementation ZYFactoryDivide

+(id<ZYCalculate>)createCalculate{
    
    return [[ZYCalculateDivide alloc]init];
}

@end
