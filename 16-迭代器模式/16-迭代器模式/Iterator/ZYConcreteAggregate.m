//
//  ZYConcreteAggregate.m
//  16-迭代器模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteAggregate.h"
#import "ZYConcreteIterator.h"

@implementation ZYConcreteAggregate

-(instancetype)init{
    
    if (self = [super init]) {
        _lists = [NSMutableArray array];
    }
    return self;
}

-(id<ZYIterator>)createIterator{
    
    return [[ZYConcreteIterator alloc]initWithAggregate:self];
}

- (NSUInteger)countA{
    return self.lists.count;
}

@end

