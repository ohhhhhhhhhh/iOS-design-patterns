//
//  ZYStrategyRebate.h
//  02-策略模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYStrategy.h"

@interface ZYStrategyRebate : NSObject<ZYStrategy>

- (instancetype)initWithPrice:(int)price rebate:(float)rebate;

@end
