//
//  ZYStrategyRebate.m
//  02-策略模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYStrategyRebate.h"

@interface ZYStrategyRebate ()

@property (nonatomic, assign) int price;

@property (nonatomic, assign) int rebate;

@end

@implementation ZYStrategyRebate

-(instancetype)initWithPrice:(int)price rebate:(float)rebate{
    
    if (self = [super init]) {
        
        self.price = price;
        self.rebate = rebate;
    }
    return self;
}

-(int)acceptPrice:(int)price{
    
    return price - (price/self.price) * self.rebate;
}

@end
