//
//  ZYEat.m
//  12-状态模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYEat.h"
#import "ZYPerson.h"
#import "ZYHome.h"

@implementation ZYEat

-(void)doSth:(ZYPerson *)person{
    
    if (person.time < 20) {
        
        NSLog(@"%@ %d点 在吃饭",person.name,person.time);
    }else{
        
        person.state = [[ZYHome alloc]init];
        [person doSth];
    }
}

@end
