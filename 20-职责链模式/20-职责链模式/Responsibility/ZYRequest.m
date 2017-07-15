//
//  ZYRequest.m
//  20-职责链模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYRequest.h"

@implementation ZYRequest

-(instancetype)initWithType:(ZYRequestType)type number:(int)number content:(NSString *)content{
    
    if (self = [super init]) {
        self.type    = type;
        self.number  = number;
        self.content = content;
    }
    return self;
}

@end
