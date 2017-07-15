//
//  ViewController.m
//  14-备忘录模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYRole.h"
#import "ZYCareTaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /**
     * 打游戏在打Boss之前保存下来 失败了就重新从上次保存的地方开始
     * 注意 这里只保存了life 和 attack  defeat没有保存
     * 
     * ZYRole(发起人):       创建<ZYMemento> 并可以使用<ZYMemento>回复以前的状态 属性的改变什么的都是在这里进行操作 其他地方不能更改到属性
     * ZYState:             <ZYMemento>里要保存的属性
     * ZYMemento(备忘录):    存储<ZYRole>里面的属性状态 防止<ZYRole>以外的其他对象进行访问自己
     * ZYCareTaker(管理者):  保存<ZYMemento> 不能对<ZYMemento>的内容进行操作
     * 
     * <ZYCareTaker>里保存的<ZYMemento>是由<ZYRole>创建的 本身没有创建<ZYMemento>的接口
     * <ZYCareTaker>没有直接的持有<ZYRole>的属性(包括<ZYState>层)
     */
    ZYRole * role = [[ZYRole alloc]init];
    
    [role show];
    
    [role fightBoss];
    [role show];
    
    ZYCareTaker * taker = [[ZYCareTaker alloc]init];
    taker.menento = [role createMemento];
    
    [role fightBoss];
    [role show];
    
    [role setMemento:taker.menento];
    [role show];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
