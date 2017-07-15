//
//  ZYWork.m
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYWork.h"

@implementation ZYWork

-(instancetype)initWithWorkName:(NSString *)work{
    
    if (self = [super init]) {
        self.workName = work;
    }
    return self;
}

-(void)work{

}

@end
