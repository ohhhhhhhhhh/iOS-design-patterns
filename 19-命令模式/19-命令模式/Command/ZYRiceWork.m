//
//  ZYRiceWork.m
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYRiceWork.h"
#import "ZYCooker.h"

@implementation ZYRiceWork

-(void)work{
    
    [ZYCooker rice:self.workName];
}

@end
