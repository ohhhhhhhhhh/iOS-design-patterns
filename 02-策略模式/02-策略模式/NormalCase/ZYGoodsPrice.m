//
//  ZYGoodsPrice.m
//  02-策略模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYGoodsPrice.h"

@implementation ZYGoodsPrice

-(int)calculatePrice:(int)price num:(int)num type:(ZYGoodsPriceType)type{
    
    int result = 0;
    int money= 0;
    
    switch (type) {
        case ZYGoodsPriceTypeNormal:
            result = price * num;
            break;
        case ZYGoodsPriceTypeSale:
            result = price * num * 0.8;
            break;
        case ZYGoodsPriceTypeRebate:
            money = price * num;
            result = money - (money/100)*20;
            break;
    }
    return result;
}

@end
