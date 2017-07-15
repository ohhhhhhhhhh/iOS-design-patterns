//
//  ViewController.m
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYCustomer.h"
#import "ZYWaiter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 发出命令、记录命令、执行命令
     * 
     * 顾客点餐 -> 服务员记录 -> 厨师做饭
     *
     * 作用: 
     * 1. 较容易的设计一个命令队列
     * 2. 较容易的将命令记入日志              (已点的菜:)
     * 3. 允许接收请求的一方决定是否要否决请求   (蜂蜜柚子茶没有了 换一个吧)
     * 4. 可以容易的实现对请求的撤销和重做      (地三鲜 不要了)
     * 5. 增加新的具体命令类很容易             (ZYDrinkWork、ZYHotDishWork、ZYRiceWork...)
     * 6. 最关键的优点是 命令模式把请求一个操作的对象与知道怎么执行一个操作的对象分隔开  (ZYWaiter请求 ZYCooker做具体的事)
     */
    
    ZYWaiter * waiter = [[ZYWaiter alloc]init];
    
    ZYWork * work = [ZYCustomer addOrderWithOrderName:@"蜂蜜柚子茶" type:ZYOrderTypeDrink];
    [waiter addWork:work];
    
    ZYWork * work1 = [ZYCustomer addOrderWithOrderName:@"两碗米饭" type:ZYOrderTypeRice];
    [waiter addWork:work1];
    
    ZYWork * work2 = [ZYCustomer addOrderWithOrderName:@"酸辣土豆丝" type:ZYOrderTypeHotDish];
    [waiter addWork:work2];
    
    ZYWork * work3 = [ZYCustomer addOrderWithOrderName:@"地三鲜" type:ZYOrderTypeHotDish];
    [waiter addWork:work3];
    
    [waiter showWork];
    
    [waiter removeWork:work3];
    
    [waiter showWork];    
    
    [waiter doWork];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
