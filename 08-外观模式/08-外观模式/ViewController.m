//
//  ViewController.m
//  08-外观模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYFacade.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /**
     * 外观模式其实就是相当于封装 遵守迪米特法则 知道最少 不需要外面知道的类就不要暴露出去
     * 把繁琐的步骤封装成一个方法 比如 看电影: 先打开投影仪 再打开功放机 再打开屏幕 再打开 DVD 播放机 再打开灯光
       把它们封装在一个"看电影"的接口里 然后外界调用一个接口就行了 不用调用那么多小步骤
     */
    
    ZYFacade * facade = [[ZYFacade alloc]init];
    [facade method];
    [facade methodd];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
