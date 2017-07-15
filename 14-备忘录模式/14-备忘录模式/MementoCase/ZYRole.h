//
//  ZYRole.h
//  14-备忘录模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYState.h"
#import "ZYMemento.h"

@interface ZYRole : NSObject

@property (nonatomic, assign) int life;

@property (nonatomic, assign) int attack;

@property (nonatomic, assign) int defeat;

-(void)show;

- (ZYMemento *)createMemento;

- (void)setMemento:(ZYMemento *)state;

- (void)fightBoss;

@end
