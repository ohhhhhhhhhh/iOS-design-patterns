//
//  ZYProxy.m
//  04-代理模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYProxy.h"

@interface ZYProxy ()

@property (nonatomic, strong) ZYRealSubject * realS;

@end

@implementation ZYProxy

-(void)eat{
    
    if (!self.realS) {
        self.realS = [[ZYRealSubject alloc]init];
    }
    [self.realS eat];
}

-(void)play{
    
    if (!self.realS) {
        self.realS = [[ZYRealSubject alloc]init];
    }
    [self.realS play];
}

-(void)laugh{
    
    if (!self.realS) {
        self.realS = [[ZYRealSubject alloc]init];
    }
    [self.realS laugh];
}

@end
