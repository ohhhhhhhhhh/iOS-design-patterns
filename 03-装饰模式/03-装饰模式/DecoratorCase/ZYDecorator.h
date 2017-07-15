//
//  ZYDecorator.h
//  03-装饰模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYDecoratorPerson.h"
#import "ZYDecoratorPerson.h"

@interface ZYDecorator : ZYDecoratorPerson

@property (nonatomic,strong) ZYDecoratorPerson * person;

- (void)decorator:(ZYDecoratorPerson *)person;

@end
