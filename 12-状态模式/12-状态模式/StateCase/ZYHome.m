//
//  ZYHome.m
//  12-状态模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYHome.h"
#import "ZYPerson.h"
#import "ZYSleep.h"

@implementation ZYHome

-(void)doSth:(ZYPerson *)person{
    
    if (person.time < 22) {
        
       NSLog(@"%@ %d点 打游戏",person.name,person.time);
    }else{
        
        person.state = [[ZYSleep alloc]init];
        [person doSth];
    }
}

@end
