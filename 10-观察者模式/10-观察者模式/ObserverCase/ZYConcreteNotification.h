//
//  ZYConcreteNotification.h
//  10-观察者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYNotification.h"

@interface ZYConcreteNotification : ZYNotification

@property (nonatomic,  copy) NSString * state;

@end
