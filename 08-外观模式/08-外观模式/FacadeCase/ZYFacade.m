//
//  ZYFacade.m
//  08-外观模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYFacade.h"
#import "ZYSubSystemA.h"
#import "ZYSubSystemB.h"
#import "ZYSubSystemC.h"
#import "ZYSubSystemD.h"

@interface ZYFacade ()

@property (nonatomic, strong) ZYSubSystemA * a;

@property (nonatomic, strong) ZYSubSystemB * b;

@property (nonatomic, strong) ZYSubSystemC * c;

@property (nonatomic, strong) ZYSubSystemD * d;

@end

@implementation ZYFacade

-(instancetype)init{
    
    if (self = [super init]) {
        
        self.a = [[ZYSubSystemA alloc]init];
        self.b = [[ZYSubSystemB alloc]init];
        self.c = [[ZYSubSystemC alloc]init];
        self.d = [[ZYSubSystemD alloc]init];
    }
    return self;
}

-(void)method{
    
    [self.a methodA];
    [self.b methodB];
    [self.c methodC];
    [self.d methodD];
}

- (void)methodd{
    
    [self.a methodAA];
    [self.b methodBB];
    [self.c methodCC];
    [self.d methodDD];
}

@end
