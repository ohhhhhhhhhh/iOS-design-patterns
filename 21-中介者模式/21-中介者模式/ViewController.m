//
//  ViewController.m
//  21-中介者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYConcreteColleague2.h"
#import "ZYConcreteColleague1.h"
#import "ZYConcreteMediator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 用一个中介者对象来封装一系列的对象交互 中介者使各对象不需要显式的互相引用 使其耦合松散 而且可以独立的改变它们之间的交互
     * 现在是两个同事 如果要是10个8个的呢 互相之间都可能有交互 通过中介者来互相"通话"
     * 把同事间的复杂"转移"到中介者的复杂
     */
    
    ZYConcreteMediator * mediator = [[ZYConcreteMediator alloc]init];
    
    // 给要交互的两个同事绑定同一个中介者对象
    ZYConcreteColleague1 * colleague1 = [[ZYConcreteColleague1 alloc]initWithMediator:mediator];
    ZYConcreteColleague2 * colleague2 = [[ZYConcreteColleague2 alloc]initWithMediator:mediator];
    
    // 设置要交互的两个同事
    mediator.colleague1 = colleague1;
    mediator.colleague2 = colleague2;
    
    [colleague1 send:@"开吗?"];
    [colleague2 send:@"开"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
