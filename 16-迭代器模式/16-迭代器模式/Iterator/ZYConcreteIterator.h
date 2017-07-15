//
//  ZYConcreteIterator.h
//  16-迭代器模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYIterator.h"
#import "ZYConcreteAggregate.h"

@interface ZYConcreteIterator : NSObject<ZYIterator>

- (instancetype)initWithAggregate:(ZYConcreteAggregate *)aggregate;

@end
