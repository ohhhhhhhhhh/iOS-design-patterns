//
//  ZYAddressSoft.m
//  18-桥接模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYAddressSoft.h"

@implementation ZYAddressSoft
@synthesize name = _name;

- (instancetype)initWithSoftName:(NSString *)name{
    
    if (self = [super init]) {
        
        self.name = name;
    }
    return self;
}

-(void)run{
    NSLog(@"%@ 已经打开了",self.name);
}

@end
