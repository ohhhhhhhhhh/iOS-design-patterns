//
//  ZYLeaf.m
//  15-组合模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYLeaf.h"

@implementation ZYLeaf
@synthesize name = _name;

-(void)add:(id<ZYComponent>)component{
    
    NSLog(@"Cannot add to a leaf");
}

-(void)remove:(id<ZYComponent>)component{
    
    NSLog(@"Cannot remove from a leaf");
}

-(void)display:(int)depth{
    
    NSString * str = @"-";
    for (int i = 1; i < depth; i++) {
        str = [str stringByAppendingString:@"-"];
    }
    
    str = [NSString stringWithFormat:@"%@  %@",str,self.name];
    NSLog(@"%@",str);
}

@end
