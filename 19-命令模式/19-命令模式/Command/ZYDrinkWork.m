//
//  ZYDrinkWork.m
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYDrinkWork.h"
#import "ZYCooker.h"

@implementation ZYDrinkWork

-(void)work{
    
    [ZYCooker drink:self.workName];
}

@end
