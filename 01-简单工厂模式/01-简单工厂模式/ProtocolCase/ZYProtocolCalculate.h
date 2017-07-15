//
//  ZYProtocolCalculate.m
//  01-简单工厂模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZYProtocolCalculate <NSObject>

- (int)calculate:(int)numA numB:(int)numB;

@end

