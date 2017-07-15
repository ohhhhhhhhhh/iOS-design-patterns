//
//  ZYSleep.m
//  12-状态模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYSleep.h"
#import "ZYPerson.h"

@implementation ZYSleep

-(void)doSth:(ZYPerson *)person{

    NSLog(@"%@ %d点 在睡觉",person.name,person.time);
}

@end
