//
//  ZYMemento.h
//  14-备忘录模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYState.h"

@interface ZYMemento : NSObject

@property (nonatomic, strong) ZYState * state;

-(instancetype)initWithState:(ZYState *)state;

@end
