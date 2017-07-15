//
//  ZYFactory.h
//  11-抽象工厂
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYComputer.h"
#import "ZYCellPhone.h"

@protocol ZYFactory <NSObject>

+ (id<ZYComputer>)createComputer;

+ (id<ZYCellPhone>)createCellPhone;

@end
