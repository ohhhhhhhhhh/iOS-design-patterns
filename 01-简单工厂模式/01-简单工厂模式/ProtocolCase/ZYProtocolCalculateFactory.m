//
//  ZYProtocolCalculateFactory.m
//  01-简单工厂模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYProtocolCalculateFactory.h"
#import "ZYProtocolCalculateAdd.h"
#import "ZYProtocolCalculateMinus.h"
#import "ZYProtocolCalculateMultiply.h"
#import "ZYProtocolCalculateDivide.h"


@implementation ZYProtocolCalculateFactory

+(id<ZYProtocolCalculate>)createCalculate:(ZYProtocolCalculateFactoryType)type{

    switch (type) {
        case ZYProtocolCalculateFactoryTypeAdd:
            return [[ZYProtocolCalculateAdd alloc]init];

        case ZYProtocolCalculateFactoryTypeMinus:
            return [[ZYProtocolCalculateMinus alloc]init];

        case ZYProtocolCalculateFactoryTypeMultiply:
            return [[ZYProtocolCalculateMultiply alloc]init];

        case ZYProtocolCalculateFactoryTypeDivide:
            return [[ZYProtocolCalculateDivide alloc]init];
    }
}

@end
