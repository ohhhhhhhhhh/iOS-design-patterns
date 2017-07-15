//
//  ZYPerson.h
//  12-状态模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYState.h"

@interface ZYPerson : NSObject

@property (nonatomic,   copy) NSString * name;

@property (nonatomic, assign) int time;

@property (nonatomic, strong) id<ZYState> state;

- (void)doSth;

@end
