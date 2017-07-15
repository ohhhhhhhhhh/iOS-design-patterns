//
//  ZYAdapter.m
//  13-适配器模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYAdapter.h"
#import "ZYChinese.h"

@interface ZYAdapter()

@property (nonatomic, strong) ZYChinese * chinese;

@end

@implementation ZYAdapter

-(ZYChinese *)chinese{
    
    if (!_chinese) {
        _chinese = [[ZYChinese alloc]init];
    }
    return _chinese;
}

-(void)come{
    
    [self.chinese lai];
}

-(void)go{
    
    [self.chinese qu];
}

@end
