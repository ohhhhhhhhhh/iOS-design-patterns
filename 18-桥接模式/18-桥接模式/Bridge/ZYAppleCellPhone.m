//
//  ZYAppleCellPhone.m
//  18-桥接模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYAppleCellPhone.h"

@implementation ZYAppleCellPhone
@synthesize software = _software;

-(void)installSoftware:(id<ZYSoftware>)software{
    
    self.software = software;
    NSLog(@"苹果手机安装了软件 %@",software.name);
}

-(void)run{
    NSLog(@"苹果手机开始运行 %@",self.software.name);
    [self.software run];
}

@end
