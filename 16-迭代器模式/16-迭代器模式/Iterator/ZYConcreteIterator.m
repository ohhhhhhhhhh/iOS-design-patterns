//
//  ZYConcreteIterator.m
//  16-迭代器模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteIterator.h"

@interface ZYConcreteIterator ()

@property (nonatomic, assign) int current;

@property (nonatomic, strong) ZYConcreteAggregate * aggregate;

@end

@implementation ZYConcreteIterator

- (instancetype)initWithAggregate:(ZYConcreteAggregate *)aggregate{
    
    if (self = [super init]) {
        
        self.aggregate = aggregate;
    }
    return self;
}

-(id)first{
    self.current = 0;
    return self.aggregate.lists[0];
}

-(id)next{
    self.current++;
    id obj = NULL;
    if (self.current < [self.aggregate countA]) {
        obj = self.aggregate.lists[self.current];
    }
    return obj;
}

-(BOOL)isFinished{
    
    return self.current >= [self.aggregate countA] ? YES : NO;
}

-(id)currentItem{
    
    if (self.current < [self.aggregate countA]) {
        return self.aggregate.lists[self.current];
    }else{
        return nil;
    }
}

@end
