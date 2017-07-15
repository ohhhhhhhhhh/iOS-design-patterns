//
//  ZYObjectStructure.m
//  24-访问者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYObjectStructure.h"

@implementation ZYObjectStructure

-(NSMutableArray<ZYElement *> *)lists{
    
    if (!_lists) {
        _lists = [NSMutableArray array];
    }
    return _lists;
}

-(void)attach:(ZYElement *)element{
    
    [self.lists addObject:element];
}

-(void)detach:(ZYElement *)element{
    
    [self.lists removeObject:element];
}

-(void)accept:(ZYVisitor *)visitor{
    
    [self.lists enumerateObjectsUsingBlock:^(ZYElement * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [obj accept:visitor];
    }];
}

@end
