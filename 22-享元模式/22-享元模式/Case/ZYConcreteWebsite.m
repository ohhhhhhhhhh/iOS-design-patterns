//
//  ZYConcreteWebsite.m
//  22-享元模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYConcreteWebsite.h"

@implementation ZYConcreteWebsite

-(instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

-(void)use:(ZYUser *)user{
    
    NSLog(@"网站分类: %@ , 用户: %@",self.name,user.name);
}

@end
