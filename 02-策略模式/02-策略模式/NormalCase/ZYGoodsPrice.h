//
//  ZYGoodsPrice.h
//  02-策略模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ZYGoodsPriceType) {

    ZYGoodsPriceTypeNormal = 0,
    ZYGoodsPriceTypeSale,
    ZYGoodsPriceTypeRebate,
};

@interface ZYGoodsPrice : NSObject

- (int)calculatePrice:(int)price num:(int)num type:(ZYGoodsPriceType)type;

@end
