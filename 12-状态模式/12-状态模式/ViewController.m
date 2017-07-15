//
//  ViewController.m
//  12-状态模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 如果if的判断语句过多的时候 为了消除庞大的条件分支语句 就可以考虑这种模式
     * 对象的行为取决于状态 并且它必须在运行时刻根据状态改变它的行为时 就可以考虑这种模式
     * 
     * 注意 这个模式只是将一个条件语句拆分开了 不是要执行一系列的步骤 实际执行的时候 应该是只执行一次的 不会像下面一样 反复同一个地方执行
     */
    ZYPerson * person = [[ZYPerson alloc]init];
    person.time = 7;
    [person doSth];
    
    person.time = 15;
    [person doSth];
    
    person.time = 19;
    [person doSth];

    person.time = 21;
    [person doSth];
    
    person.time = 23;
    [person doSth];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
