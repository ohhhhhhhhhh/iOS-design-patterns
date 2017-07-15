//
//  ZYCreateBuilderA.m
//  09-建造者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYCreateBuilderA.h"
#import "ZYProduct.h"

@interface ZYCreateBuilderA ()

@property (nonatomic, strong) ZYProduct * product;

@end

@implementation ZYCreateBuilderA

-(ZYProduct *)product{
    
    if (!_product) {
        _product = [[ZYProduct alloc]init];
    }
    return _product;
}

-(void)paintHead{
    
    [self.product add:@"头  ----- A"];
}

- (void)paintBody{
    
    [self.product add:@"身体 ----- A"];
}

-(ZYProduct *)getResult{
    
    return self.product;
}

@end
