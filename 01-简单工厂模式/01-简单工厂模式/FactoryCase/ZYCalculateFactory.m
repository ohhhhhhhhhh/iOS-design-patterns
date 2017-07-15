//
//  ZYCalculateFactory.m
//  01-简单工厂模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYCalculateFactory.h"
#import "ZYCalculateAdd.h"
#import "ZYCalculateMinus.h"
#import "ZYCalculateMultiply.h"
#import "ZYCalculateDivide.h"

@implementation ZYCalculateFactory

+ (ZYCalculate *)createCalculate:(ZYCalculateFactoryType)type{
    
    switch (type) {
        case ZYCalculateFactoryTypeAdd:
            return [[ZYCalculateAdd alloc]init];

        case ZYCalculateFactoryTypeMinus:
            return [[ZYCalculateMinus alloc]init];

        case ZYCalculateFactoryTypeMutiply:
            return [[ZYCalculateMultiply alloc]init];

        case ZYCalculateFactoryTypeDivide:
            return [[ZYCalculateDivide alloc]init];
    }
}

@end
