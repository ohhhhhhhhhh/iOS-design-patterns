//
//  ZYWord.h
//  06-原型模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYWord : NSObject

@property (nonatomic,   copy) NSString * name;

@property (nonatomic,   copy) NSString * company;

@property (nonatomic, assign) int age;

@property (nonatomic, assign) int sex;

// 标识 0:浅复制  1:深复制
@property (nonatomic, assign) int flag;

@end
