//
//  ZYPerson.h
//  03-装饰模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYPerson : NSObject

@property (nonatomic,  copy) NSString * name;

- (void)wearShoes;

- (void)wearClothes;

- (void)wearGlasses;

- (void)showLog;

@end
