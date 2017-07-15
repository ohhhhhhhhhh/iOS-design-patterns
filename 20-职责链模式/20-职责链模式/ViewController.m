//
//  ViewController.m
//  20-职责链模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYCommonManager.h"
#import "ZYRequest.h"
#import "ZYMajordomo.h"
#import "ZYGeneralManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 发出请求的都是经理 具体是谁处理的外界不知道
     */
    
    ZYCommonManager * common = [[ZYCommonManager alloc]initWithName:@"经理"];
    ZYMajordomo  * majordomo = [[ZYMajordomo alloc]initWithName:@"总监"];
    ZYGeneralManager * general = [[ZYGeneralManager alloc]initWithName:@"总经理"];
    
    common.superior = majordomo;
    majordomo.superior = general;
    
    
    ZYRequest * request = [[ZYRequest alloc]initWithType:ZYRequestTypeOne number:2 content:@"想打游戏"];
    [common requestApplication:request];
    
    ZYRequest * request1 = [[ZYRequest alloc]initWithType:ZYRequestTypeOne number:6 content:@"想回家"];
    [common requestApplication:request1];
    
    ZYRequest * request2 = [[ZYRequest alloc]initWithType:ZYRequestTypeOne number:13 content:@"想休息"];
    [common requestApplication:request2];
    
    ZYRequest * request3 = [[ZYRequest alloc]initWithType:ZYRequestTypeOne number:20 content:@"想出去玩"];
    [common requestApplication:request3];
    
    ZYRequest * request4 = [[ZYRequest alloc]initWithType:ZYRequestTypeTwo number:400 content:@"想买装备"];
    [common requestApplication:request4];
    
    ZYRequest * request5 = [[ZYRequest alloc]initWithType:ZYRequestTypeTwo number:600 content:@"想买皮肤"];
    [common requestApplication:request5];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
