//
//  ViewController.m
//  04-代理模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYProxy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 网上的绝大部分资料都说代理模式就是我们常用的Delegate 写一个协议 然后谁遵守了就谁实现 
     * 但是按照大话设计模式里面写出来的却是这样的代码 感觉可能是OC没有像C++ 跟C#那样有命名空间或者Java中的包的概念 所以这个的好处不是很明显
     * 个人感觉有点像 代理给实际实现者封装了一层 调用就调用代理就行 实际实现者之和代理产生关系 和外界没有关系 隔离了实际实现者
     */
    
    ZYProxy * proxy = [[ZYProxy alloc]init];
    [proxy eat];
    [proxy play];
    [proxy laugh];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
