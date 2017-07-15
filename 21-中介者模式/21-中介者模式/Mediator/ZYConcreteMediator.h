//
//  ZYConcreteMediator.h
//  21-中介者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYMediator.h"
#import "ZYConcreteColleague1.h"
#import "ZYConcreteColleague2.h"

@interface ZYConcreteMediator : NSObject<ZYMediator>

@property (nonatomic, strong) ZYConcreteColleague1 * colleague1;

@property (nonatomic, strong) ZYConcreteColleague2 * colleague2;

@end
