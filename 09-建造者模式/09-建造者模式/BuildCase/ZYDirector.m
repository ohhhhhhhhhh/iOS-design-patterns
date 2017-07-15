//
//  ZYDirector.m
//  09-建造者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYDirector.h"

@implementation ZYDirector

- (void)director:(id<ZYBuilder>)builder{
    
    [builder paintHead];
    [builder paintBody];
}

@end
