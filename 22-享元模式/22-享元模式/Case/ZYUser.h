//
//  ZYUser.h
//  22-享元模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYUser : NSObject

@property (nonatomic,  copy) NSString * name;

- (instancetype)initWithName:(NSString *)name;

@end
