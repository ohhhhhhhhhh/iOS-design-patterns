//
//  ZYAppleFactory.m
//  11-抽象工厂
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYAppleFactory.h"
#import "ZYAppleComputer.h"
#import "ZYAppleCellPhone.h"

@implementation ZYAppleFactory

+(id<ZYComputer>)createComputer{
    
    return [[ZYAppleComputer alloc]init];
}

+(id<ZYCellPhone>)createCellPhone{
    
    return [[ZYAppleCellPhone alloc]init];
}

@end
