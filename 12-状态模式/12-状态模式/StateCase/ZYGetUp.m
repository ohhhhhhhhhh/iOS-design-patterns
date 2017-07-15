//
//  ZYGetUp.m
//  12-状态模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYGetUp.h"
#import "ZYPerson.h"
#import "ZYWork.h"

@implementation ZYGetUp

-(void)doSth:(ZYPerson *)person{
   
    if (person.time < 8) {
        
        NSLog(@"%@ %d点 起床了",person.name,person.time);
    }else{
        
        person.state = [[ZYWork alloc]init];
        [person doSth];
    }
}

@end

