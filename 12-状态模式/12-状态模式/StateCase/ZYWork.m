//
//  ZYWork.m
//  12-状态模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYWork.h"
#import "ZYPerson.h"
#import "ZYEat.h"

@implementation ZYWork

-(void)doSth:(ZYPerson *)person{
    
    if (person.time < 18) {
        
        NSLog(@"%@ %d点 在工作",person.name,person.time);
    }else{
        
        person.state = [[ZYEat alloc]init];
        [person doSth];
    }
}

@end
