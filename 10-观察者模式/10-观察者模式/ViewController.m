//
//  ViewController.m
//  10-观察者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYConcreteObserver.h"
#import "ZYConcreteNotification.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /**
     * 被观察者 --> 被观察的人   通知者 --> 状态改了通知被观察者的人
     * 被观察者告诉通知者当发生某一状况的时候通知自己 收到通知以后被观察者要更新自己的状态 所以它要有一个- (void)update的方法
     * 具体的被观察者还要知道是谁通知了自己- (instancetype)initWithNoti:(ZYConcreteNotification *)noti name:(NSString *)name 所以初始化的时候把通知者和自己的名字传进去
     * 通知者要能够通知到被观察者 那么就首先需要有个数组保存被观察者 相应也要有添加、删除被观察者的方法 还有一个通知的方法
     * 具体的通知者应该有一个状态 当状态改变的时候通知被观察者
     */
    
    ZYConcreteNotification * noti = [[ZYConcreteNotification alloc]init];
    
    [noti addObserver:[[ZYConcreteObserver alloc] initWithNoti:noti name:@"AAA"]];
    [noti addObserver:[[ZYConcreteObserver alloc] initWithNoti:noti name:@"BBB"]];
    [noti addObserver:[[ZYConcreteObserver alloc] initWithNoti:noti name:@"CCC"]];
    
    noti.state = @"哈哈哈";
    [noti notifyObservers];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
