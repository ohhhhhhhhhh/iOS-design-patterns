//
//  ZYPerson.m
//  03-装饰模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYPerson.h"

@implementation ZYPerson

- (void)wearShoes{
    
    NSLog(@"穿鞋");
}

- (void)wearClothes{
    
    NSLog(@"穿衣服");
}

- (void)wearGlasses{
    
    NSLog(@"戴眼镜");
}

- (void)showLog{
    
    NSLog(@"装饰的是 %@",self.name);
}

@end
