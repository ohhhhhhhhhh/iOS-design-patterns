//
//  ZYProduct.m
//  09-建造者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYProduct.h"

@implementation ZYProduct

-(NSMutableArray *)parts{
    
    if (!_parts) {
        _parts = [NSMutableArray array];
    }
    return _parts;
}

-(void)add:(NSString *)part{
    
    [self.parts addObject:part];
}

-(void)show{
    
    [self.parts enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSLog(@"%@\n",obj);
    }];
}

@end
