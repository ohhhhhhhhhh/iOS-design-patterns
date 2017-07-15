//
//  ZYCustomer.m
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYCustomer.h"
#import "ZYRiceWork.h"
#import "ZYDrinkWork.h"
#import "ZYHotDishWork.h"

@implementation ZYCustomer

+ (ZYWork *)addOrderWithOrderName:(NSString *)name type:(ZYOrderType)type{
    
    ZYWork * work;
    switch (type) {
        case ZYOrderTypeDrink:
            work = [[ZYDrinkWork alloc]initWithWorkName:name];
            break;
        case ZYOrderTypeRice:
            work = [[ZYRiceWork alloc]initWithWorkName:name];
            break;
        case ZYOrderTypeHotDish:
            work = [[ZYHotDishWork alloc]initWithWorkName:name];
            break;
    }
    return work;
}

@end
