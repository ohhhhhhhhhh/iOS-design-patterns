//
//  ZYCalculateDivide.m
//  05-工厂模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYCalculateDivide.h"

@implementation ZYCalculateDivide

-(int)calculate:(int)numA numB:(int)numB{
    
    if (numB == 0) {
        return 99999999;
    }
    return numA / numB;
}

@end
