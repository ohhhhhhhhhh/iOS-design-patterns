//
//  ZYProtocolCalculateDivide.m
//  01-简单工厂模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYProtocolCalculateDivide.h"

@implementation ZYProtocolCalculateDivide

-(int)calculate:(int)numA numB:(int)numB{
    
    if (numB == 0) {
        return 99999999;
    }
    return numA / numB;
}

@end
