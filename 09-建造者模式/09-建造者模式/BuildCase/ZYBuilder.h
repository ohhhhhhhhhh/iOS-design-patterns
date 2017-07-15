//
//  ZYBuilder.m
//  09-建造者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYProduct.h"

@protocol ZYBuilder <NSObject>

- (void)paintHead;

- (void)paintBody;

- (ZYProduct *)getResult;

@end

