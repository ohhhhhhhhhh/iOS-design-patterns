//
//  ZYASUSFactory.m
//  11-抽象工厂
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYASUSFactory.h"
#import "ZYASUSComputer.h"
#import "ZYASUSCellPhone.h"

@implementation ZYASUSFactory

+(id<ZYComputer>)createComputer{
    
    return [[ZYASUSComputer alloc]init];
}

+(id<ZYCellPhone>)createCellPhone{
    
    return [[ZYASUSCellPhone alloc]init];
}

@end
