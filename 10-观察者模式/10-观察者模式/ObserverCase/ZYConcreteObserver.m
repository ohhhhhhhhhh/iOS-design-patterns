//
//  ZYConcreteObserver.m
//  10-观察者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteObserver.h"

@interface ZYConcreteObserver ()

@property (nonatomic,   copy) NSString * name;

@property (nonatomic,   copy) NSString * state;

@property (nonatomic, strong) ZYConcreteNotification * noti;

@end

@implementation ZYConcreteObserver

- (instancetype)initWithNoti:(ZYConcreteNotification *)noti name:(NSString *)name{
    
    if (self = [super init]) {
        
        self.noti = noti;
        self.name = name;
    }
    return self;
}

-(void)update{
    
    self.state = self.noti.state;
    NSLog(@"观察者 %@ 的状态是 %@",self.name,self.state);
}

@end
