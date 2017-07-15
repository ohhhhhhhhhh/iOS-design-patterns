//
//  ZYConcreteAggregate.h
//  16-迭代器模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYAggregate.h"

@interface ZYConcreteAggregate : NSObject<ZYAggregate>

@property (nonatomic, strong) NSMutableArray * lists;

- (NSUInteger)countA;

@end
