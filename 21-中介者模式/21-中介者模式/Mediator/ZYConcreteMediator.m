//
//  ZYConcreteMediator.m
//  21-中介者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteMediator.h"

@implementation ZYConcreteMediator

-(void)send:(NSString *)message colleague:(ZYColleague *)colleague{
    
    if (colleague == self.colleague1) {
        [self.colleague2 notify:message];
    }else{
        [self.colleague1 notify:message];
    }
}

@end
