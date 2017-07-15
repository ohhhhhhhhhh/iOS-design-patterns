//
//  ZYUser.m
//  22-享元模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYUser.h"

@implementation ZYUser

-(instancetype)initWithName:(NSString *)name{
    
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

@end
