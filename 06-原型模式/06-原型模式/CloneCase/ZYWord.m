//
//  ZYWord.m
//  06-原型模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYWord.h"

@implementation ZYWord

-(id)copyWithZone:(NSZone *)zone{
    
    if (self.flag == 0) {
        // 浅复制
        return self;
    }else{
        // 深复制
        ZYWord * word = [[ZYWord alloc]init];
        word.name     = self.name;
        word.company  = self.company;
        word.age      = self.age;
        word.sex      = self.sex;
        return word;
    }
}

@end
