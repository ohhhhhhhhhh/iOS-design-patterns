//
//  ZYCustomer.h
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYWork.h"

typedef NS_ENUM(NSInteger, ZYOrderType) {

    ZYOrderTypeDrink = 0,
    ZYOrderTypeRice,
    ZYOrderTypeHotDish,
};

@interface ZYCustomer : NSObject

+ (ZYWork *)addOrderWithOrderName:(NSString *)name type:(ZYOrderType)type;

@end
