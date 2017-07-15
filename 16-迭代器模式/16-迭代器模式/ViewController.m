//
//  ViewController.m
//  16-迭代器模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYConcreteAggregate.h"
#import "ZYIterator.h"
#import "ZYConcreteIterator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /**
     * 循环遍历的实现
     * 其实就是一个数组 依照某个顺序(从后往前 从前往后 从高到矮 从小到大)依次取值 直到整个数组都被遍历过再结束
     */
    ZYConcreteAggregate * aggregate = [[ZYConcreteAggregate alloc]init];
    
    [aggregate.lists addObject:@"大鸟"];
    [aggregate.lists addObject:@"小菜"];
    [aggregate.lists addObject:@"行李"];
    [aggregate.lists addObject:@"老外"];
    [aggregate.lists addObject:@"公交内部员工"];
    [aggregate.lists addObject:@"小偷"];
    
    id<ZYIterator> iterator = [aggregate createIterator];
    while (!iterator.isFinished) {
        NSLog(@" %@ 买票",iterator.currentItem);
        [iterator next];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
