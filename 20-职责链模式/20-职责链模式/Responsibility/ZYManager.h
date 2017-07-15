//
//  ZYManager.h
//  20-职责链模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYRequest.h"

@interface ZYManager : NSObject

@property (nonatomic,   copy) NSString * name;

@property (nonatomic, strong) ZYManager * superior;

- (instancetype)initWithName:(NSString *)name;

- (void)requestApplication:(ZYRequest *)request;

@end
