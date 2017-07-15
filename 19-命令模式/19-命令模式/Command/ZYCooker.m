//
//  ZYCooker.m
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYCooker.h"

@implementation ZYCooker

+ (void)drink:(NSString *)work{
    NSLog(@"厨师在做 %@",work);
}

+ (void)rice:(NSString *)work{
    NSLog(@"厨师在做 %@",work);
}

+ (void)hotDish:(NSString *)work{
    NSLog(@"厨师在做 %@",work);
}

@end
