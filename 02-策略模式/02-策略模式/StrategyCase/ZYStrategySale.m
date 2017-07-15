//
//  ZYStrategySale.m
//  02-策略模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYStrategySale.h"

@interface ZYStrategySale ()

@property (nonatomic, assign) float sale;

@end

@implementation ZYStrategySale

-(instancetype)initWithSale:(float)sale{
    
    if (self = [super init]) {
        self.sale = sale;
    }
    return self;
}

-(int)acceptPrice:(int)price{
    
    return price * self.sale;
}

@end
