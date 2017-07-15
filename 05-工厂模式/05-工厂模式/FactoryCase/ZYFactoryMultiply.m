//
//  ZYFactoryMultiply.m
//  05-工厂模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYFactoryMultiply.h"
#import "ZYCalculateMultiply.h"

@implementation ZYFactoryMultiply

+(id<ZYCalculate>)createCalculate{
    
    return [[ZYCalculateMultiply alloc]init];
}

@end
