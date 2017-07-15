//
//  ZYCalculateNormal.h
//  01-简单工厂模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ZYCalculateType) {
    
    ZYCalculateTypeAdd = 0,
    ZYCalculateTypeMinus ,
    ZYCalculateTypeMultiply,
    ZYCalculateTypeDivide,
};

@interface ZYCalculateNormal : NSObject

- (NSString *)calculate:(ZYCalculateType)type numA:(int)numA numB:(int)numB;

@end
