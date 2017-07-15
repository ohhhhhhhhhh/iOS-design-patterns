//
//  ViewController.m
//  02-策略模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"

#import "ZYGoodsPrice.h"

#import "ZYStrategyContext.h"
#import "ZYStrategyNormal.h"
#import "ZYStrategySale.h"
#import "ZYStrategyRebate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 商场商品 有不打折的、打八折的、满100减20的  计算总价格
     */
    
    // Normal
    ZYGoodsPrice * price = [[ZYGoodsPrice alloc]init];
    // 第一件商品 不打折
    int one = [price calculatePrice:15 num:2 type:ZYGoodsPriceTypeNormal];

    NSLog(@"Normal Case --------- %d",one);
    
    
    /**
     * 策略模式
     * 传进去的是 策略的实例
     * 要再加一个策略的话就新建一个类 然后遵守协议 实现策略 而不用改变其他策略里的内容
     */
    ZYStrategyContext * context1;
    ZYStrategyContextType type = ZYStrategyContextTypeSale;
    
    switch (type) {
        case ZYStrategyContextTypeNormal:
            context1 = [[ZYStrategyContext alloc]initWithStrategy:[[ZYStrategyNormal alloc]init]];
            break;
        case ZYStrategyContextTypeSale:
            context1 = [[ZYStrategyContext alloc]initWithStrategy:[[ZYStrategySale alloc]initWithSale:0.8]];
            break;
        case ZYStrategyContextTypeRebate:
            context1 = [[ZYStrategyContext alloc]initWithStrategy:[[ZYStrategyRebate alloc]initWithPrice:100 rebate:20]];
            break;
    }
    int totalPrice = [context1 getMoney:170];
    NSLog(@"策略模式 --------- total = %d",totalPrice);
    
    
    
    /**
     *  个人目前的理解是
     *     简单工厂是需要传一个类型 工厂(Factory)内部创建一个实例返回给外面 外面拿到创建好的实例 调用这个实例的方法
     *     策略模式是需要传进去一个策略 是在外面创建好实例 然后把实例传进去 外面调用的方法是策略封装好的方法
     *     
     *     可以这样想  如果是工厂的话 商场打三折和打五折就必须是两个类型  策略的话 在外面传不同的参数就行了
     *
     *  一般是将策略模式和简单工厂结合使用
     *
     *  模拟简单工厂
     *  简单工厂返回一个实例 所以要有一个遵守协议的对象接收初始化后的实例对象  如果是继承的话 就要知道计算父类
     *  id<ZYProtocolCalculate> procotolFactory = [ZYProtocolCalculateFactory createCalculate:ZYProtocolCalculateFactoryTypeMultiply];
     */
    // 策略模式和简单工厂相结合
    ZYStrategyContext * strategy = [[ZYStrategyContext alloc]initWithStrategyFactory:ZYStrategyContextTypeRebate];
    int strategyF = [strategy getMoney:170];
    NSLog(@"策略模式和简单工厂相结合 --------- %d ",strategyF);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
