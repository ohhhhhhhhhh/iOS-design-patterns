//
//  ZYHotDishWork.m
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYHotDishWork.h"
#import "ZYCooker.h"

@implementation ZYHotDishWork

-(void)work{
    
    [ZYCooker hotDish:self.workName];
}

@end
