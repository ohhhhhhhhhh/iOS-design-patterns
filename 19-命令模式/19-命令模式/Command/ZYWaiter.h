//
//  ZYWaiter.h
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYWork.h"

@interface ZYWaiter : NSObject

- (void)addWork:(ZYWork *)work;

- (void)removeWork:(ZYWork *)work;

- (void)doWork;

- (void)showWork;

@end
