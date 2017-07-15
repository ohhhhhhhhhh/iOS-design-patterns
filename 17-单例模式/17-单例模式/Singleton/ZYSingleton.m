//
//  ZYSingleton.m
//  17-单例模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYSingleton.h"

@interface ZYSingleton ()

@end

@implementation ZYSingleton

+(instancetype)shareSingleton{
    
    static ZYSingleton * ton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ton = [[ZYSingleton alloc]init];
    });
    return ton;
}

// 模仿GCD实现过程
//static id _instance;
//
//+(instancetype)allocWithZone:(struct _NSZone *)zone{
//    
//    @synchronized (self) {
//        if (!_instance) {
//            _instance = [super allocWithZone:zone];
//        }
//    }
//    return _instance;
//}
//
//+ (instancetype)shareSingletonNormal{
//    
//    @synchronized (self) {
//        if (!_instance) {
//            _instance = [[self alloc]init];
//        }
//    }
//    return _instance;
//}
//
//-(id)copyWithZone:(NSZone *)zone{
//    return _instance;
//}

@end
