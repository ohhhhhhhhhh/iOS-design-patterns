//
//  ZYMemento.m
//  14-备忘录模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYMemento.h"

@implementation ZYMemento

-(instancetype)initWithState:(ZYState *)state{
    
    if (self = [super init]) {
        
        self.state = state;
    }
    return self;
}

@end
