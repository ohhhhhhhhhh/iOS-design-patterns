//
//  ZYRole.m
//  14-备忘录模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYRole.h"

@implementation ZYRole

-(instancetype)init{
    
    if (self = [super init]) {
        
        _life = 100;
        
        _attack = 100;
        
        _defeat = 100;
    }
    return self;
}

-(void)show{
    
    NSLog(@"life = %d, attack = %d, defeat = %d",self.life,self.attack,self.defeat);
}

-(ZYMemento *)createMemento{
    
    ZYState * state = [[ZYState alloc]init];
    
    state.life   = self.life;
    state.attack = self.attack;
    
    ZYMemento * manager = [[ZYMemento alloc]initWithState:state];
    return manager;
}

-(void)setMemento:(ZYMemento *)state{
    
    self.life   = state.state.life;
    self.attack = state.state.attack;
}


- (void)fightBoss{
    
    self.life   -= 15;
    self.attack -= 20;
    self.defeat -= 30;
}

@end
