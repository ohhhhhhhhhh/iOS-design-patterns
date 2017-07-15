//
//  ZYConcreteWebsite.h
//  22-享元模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYWebsite.h"

@interface ZYConcreteWebsite : NSObject<ZYWebsite>

@property (nonatomic,  copy) NSString * name;

- (instancetype)initWithName:(NSString *)name;

@end
