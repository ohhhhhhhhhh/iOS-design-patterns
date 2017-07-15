//
//  ZYConcreteObserver.h
//  10-观察者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYObserver.h"
#import "ZYConcreteNotification.h"

@interface ZYConcreteObserver : ZYObserver

- (instancetype)initWithNoti:(ZYConcreteNotification *)noti name:(NSString *)name;

@end
