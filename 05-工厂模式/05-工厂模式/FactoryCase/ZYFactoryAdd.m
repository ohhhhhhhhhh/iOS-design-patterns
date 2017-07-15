//
//  ZYFactoryAdd.m
//  05-工厂模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYFactoryAdd.h"
#import "ZYCalculateAdd.h"

@implementation ZYFactoryAdd

+(id<ZYCalculate>)createCalculate{
    
    return [[ZYCalculateAdd alloc]init];
}

@end
