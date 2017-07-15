//
//  ZYComposite.m
//  15-组合模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYComposite.h"

@interface ZYComposite ()

@property (nonatomic, strong) NSMutableArray * children;

@end

@implementation ZYComposite
@synthesize name = _name;

-(NSMutableArray *)children{
    
    if (!_children) {
        _children = [NSMutableArray array];
    }
    return _children;
}

-(void)add:(id<ZYComponent>)component{
    
    [self.children addObject:component];
}

-(void)remove:(id<ZYComponent>)component{
    
    [self.children removeObject:component];
}

-(void)display:(int)depth{
    
    NSString * str = @"-";
    for (int i = 1; i < depth; i++) {
       str = [str stringByAppendingString:@"-"];
    }
    
    str = [NSString stringWithFormat:@"%@  %@",str,self.name];
    NSLog(@"%@",str);
    
    [self.children enumerateObjectsUsingBlock:^(id<ZYComponent> _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [obj display:depth+2];
    }];
}

@end
