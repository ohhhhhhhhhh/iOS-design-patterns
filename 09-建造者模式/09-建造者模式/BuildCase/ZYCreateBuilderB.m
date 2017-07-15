//
//  ZYCreateBuilderB.m
//  09-建造者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYCreateBuilderB.h"
#import "ZYProduct.h"

@interface ZYCreateBuilderB ()

@property (nonatomic, strong) ZYProduct * product;

@end

@implementation ZYCreateBuilderB

-(ZYProduct *)product{
    
    if (!_product) {
        _product = [[ZYProduct alloc]init];
    }
    return _product;
}

-(void)paintHead{
    
    [self.product add:@"头  ----- B"];
}

- (void)paintBody{
    
    [self.product add:@"身体 ----- B"];
}

-(ZYProduct *)getResult{
    
    return self.product;
}


@end
