//
//  ZYManager.m
//  20-职责链模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYManager.h"

@implementation ZYManager

-(instancetype)initWithName:(NSString *)name{
    
    if (self = [super init]) {
        
        self.name = name;
    }
    return self;
}

-(void)requestApplication:(ZYRequest *)request{
    
}

@end
