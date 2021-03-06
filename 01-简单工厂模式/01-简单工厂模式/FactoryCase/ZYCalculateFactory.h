//
//  ZYCalculateFactory.h
//  01-简单工厂模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYCalculate.h"

typedef NS_ENUM(NSInteger, ZYCalculateFactoryType) {

    ZYCalculateFactoryTypeAdd = 0,
    ZYCalculateFactoryTypeMinus,
    ZYCalculateFactoryTypeMutiply,
    ZYCalculateFactoryTypeDivide,
};

@interface ZYCalculateFactory : NSObject

+ (ZYCalculate *)createCalculate:(ZYCalculateFactoryType)type;

@end


