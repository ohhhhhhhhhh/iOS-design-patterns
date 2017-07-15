//
//  ZYNotification.m
//  10-观察者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYNotification.h"

@interface ZYNotification ()

@property (nonatomic, strong) NSMutableArray<ZYObserver *> * observers;

@end

@implementation ZYNotification

-(NSMutableArray<ZYObserver *> *)observers{
    
    if (!_observers) {
        _observers = [[NSMutableArray alloc]init];
    }
    return _observers;
}

-(void)addObserver:(ZYObserver *)observer{
    
    [self.observers addObject:observer];
}

-(void)deleteObserver:(ZYObserver *)observer{
    
    [self.observers removeObject:observer];
}

-(void)notifyObservers{
    
    [self.observers enumerateObjectsUsingBlock:^(ZYObserver * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [obj update];
    }];
}

@end
