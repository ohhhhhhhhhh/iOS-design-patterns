//
//  ZYNotification.h
//  10-观察者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYObserver.h"

@interface ZYNotification : NSObject

- (void)addObserver:(ZYObserver *)observer;

- (void)deleteObserver:(ZYObserver *)observer;

- (void)notifyObservers;

@end
