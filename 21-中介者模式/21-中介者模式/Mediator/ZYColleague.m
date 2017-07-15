//
//  ZYColleague.m
//  21-中介者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYColleague.h"

@implementation ZYColleague

-(instancetype)initWithMediator:(id<ZYMediator>)mediator{
    
    if (self = [super init]) {
        self.mediator = mediator;
    }
    return self;
}

-(void)send:(NSString *)message{
    
}

-(void)notify:(NSString *)message{
    
}


@end
