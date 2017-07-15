//
//  ZYMusicSoft.m
//  18-桥接模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYMusicSoft.h"

@implementation ZYMusicSoft
@synthesize name = _name;

- (instancetype)initWithSoftName:(NSString *)name{
    
    if (self = [super init]) {
        
        self.name = name;
    }
    return self;
}

-(void)run{
    NSLog(@"%@ 开始播放音乐",self.name);
}

@end

