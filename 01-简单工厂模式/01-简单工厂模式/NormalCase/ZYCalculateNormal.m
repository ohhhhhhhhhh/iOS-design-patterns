//
//  ZYCalculateNormal.m
//  01-简单工厂模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYCalculateNormal.h"

@implementation ZYCalculateNormal

-(NSString *)calculate:(ZYCalculateType)type numA:(int)numA numB:(int)numB{
    
    int result = 0;
    
    switch (type) {
        case ZYCalculateTypeAdd:
            result = numA + numB;
            break;
        case ZYCalculateTypeMinus:
            result = numA - numB;
            break;
        case ZYCalculateTypeMultiply:
            result = numA * numB;
            break;
        case ZYCalculateTypeDivide:
            if (numB == 0) {
                return @"除数不能为0";
            }
            result = numA / numB;
            break;
        default:
            break;
    }
    return [NSString stringWithFormat:@"Normal result = %d",result];
}

@end
