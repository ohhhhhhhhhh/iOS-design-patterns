//
//  ZYProtocolCalculateFactory.h
//  01-简单工厂模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYProtocolCalculate.h"

typedef NS_ENUM(NSInteger, ZYProtocolCalculateFactoryType) {

    ZYProtocolCalculateFactoryTypeAdd = 0,
    ZYProtocolCalculateFactoryTypeMinus,
    ZYProtocolCalculateFactoryTypeMultiply,
    ZYProtocolCalculateFactoryTypeDivide
};

@interface ZYProtocolCalculateFactory : NSObject

+ (id<ZYProtocolCalculate>)createCalculate:(ZYProtocolCalculateFactoryType)type;

@end
