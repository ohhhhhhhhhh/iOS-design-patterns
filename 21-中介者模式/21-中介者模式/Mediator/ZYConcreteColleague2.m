//
//  ZYConcreteColleague2.m
//  21-中介者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteColleague2.h"

@implementation ZYConcreteColleague2

-(void)send:(NSString *)message{
    
    [self.mediator send:message colleague:self];
}

-(void)notify:(NSString *)message{
    
    NSLog(@"同事二得到消息: %@",message);
}


@end
