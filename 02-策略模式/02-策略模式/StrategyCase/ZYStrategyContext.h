//
//  ZYStrategyContext.h
//  02-策略模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYStrategy.h"

typedef NS_ENUM(NSInteger, ZYStrategyContextType) {

    ZYStrategyContextTypeNormal = 0,
    ZYStrategyContextTypeSale,
    ZYStrategyContextTypeRebate,
};

@interface ZYStrategyContext : NSObject

// 策略模式
- (instancetype)initWithStrategy:(id<ZYStrategy>)strategy;

- (int)getMoney:(int)money;

// 策略模式和简单工厂相结合
- (instancetype)initWithStrategyFactory:(ZYStrategyContextType)type;

@end
