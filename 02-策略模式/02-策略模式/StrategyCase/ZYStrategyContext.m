//
//  ZYStrategyContext.m
//  02-策略模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYStrategyContext.h"

// 策略模式和简单工厂相结合
#import "ZYStrategySale.h"
#import "ZYStrategyNormal.h"
#import "ZYStrategyRebate.h"

@interface ZYStrategyContext ()

@property (nonatomic, strong) id<ZYStrategy> strategy;

@end

@implementation ZYStrategyContext

#pragma mark -策略模式
- (instancetype)initWithStrategy:(id<ZYStrategy>)strategy{
    
    if (self = [super init]) {
        
        self.strategy = strategy;
    }
    return self;
}

-(int)getMoney:(int)money{
    
    return [self.strategy acceptPrice:money];
}

#pragma mark -策略模式和简单工厂相结合
- (instancetype)initWithStrategyFactory:(ZYStrategyContextType)type{
    
    if (self = [super init]) {
        
        switch (type) {
            case ZYStrategyContextTypeNormal:
                self.strategy = [[ZYStrategyNormal alloc]init];
                break;
            case ZYStrategyContextTypeSale:
                self.strategy = [[ZYStrategySale alloc]initWithSale:0.8];
                break;
            case ZYStrategyContextTypeRebate:
                self.strategy = [[ZYStrategyRebate alloc]initWithPrice:100 rebate:20];
                break;
        }
    }
    return self;
}

@end
