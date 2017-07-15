//
//  ViewController.m
//  13-适配器模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYPlayer.h"
#import "ZYAdapter.h"
#import "ZYAmerican.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 为了统一接口名 外界需要的接口名和以前写的不一样 以前的接口名在其他地方调用又很多 因为这个改名字工作量又很大 就可以考虑用这个模式
     * 就像是 一个电源适配器 可以适配不同的电压
     * 如果直接用<ZYChinese>的话 调用的方法名就不统一了 不满足需求 所以就利用<ZYAdapter>对它包装一层
     */
   
    ZYPlayer * player = [[ZYAmerican alloc]init];
    [player come];
    [player go];
    
    ZYPlayer * player1 = [[ZYAdapter alloc]init];
    [player1 come];
    [player1 go];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
