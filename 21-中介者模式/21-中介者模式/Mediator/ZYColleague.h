//
//  ZYColleague.h
//  21-中介者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYMediator.h"

@interface ZYColleague : NSObject

@property (nonatomic, weak) id<ZYMediator> mediator;

- (instancetype)initWithMediator:(id<ZYMediator>)mediator;

- (void)send:(NSString *)message;

- (void)notify:(NSString *)message;

@end
