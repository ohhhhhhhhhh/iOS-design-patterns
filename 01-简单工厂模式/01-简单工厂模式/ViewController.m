//
//  ViewController.m
//  01-简单工厂模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"

// Normal Calcalute
#import "ZYCalculateNormal.h"

// Factory Calculate
#import "ZYCalculateFactory.h"
#import "ZYCalculate.h"

// Protocol Calculate
#import "ZYProtocolCalculateFactory.h"
#import "ZYProtocolCalculate.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    /**
     * 普通写法
     * 如果以后增加了平方、取余的计算时, 需要更改< ZYCalculate >中的-(int)calculate:(NSString *)type numA:(int)numA numB:(int)numB方法, 造成该方法里的判断逻辑越来越多
     * 当需要更改的时候, 如果不小心改了其他的原有代码就会造成不必要的bug, 使原来运行良好的代码无端增加了风险, 同时也违反了开闭原则
     * 所以需要简单工厂模式
     */
    ZYCalculateNormal * calculate = [[ZYCalculateNormal alloc]init];
    NSString * result = [calculate calculate:ZYCalculateTypeAdd numA:10 numB:30];
    NSLog(@"普通写法 ------- %@",result);
    
    
    /**
     * 继承方式的简单工厂
     * 子类全部封装在父类< ZYCalculateFactory >里,  在父类的-(instancetype)initWithType:(NSString *)type方法中初始化要用的子类
     * 如果需要增加平方或取余等计算方法, 只要在新增一个类< ZYCalculateXXX >继承< ZYCalculateFactory >然后再在< ZYCalculateFactory >中-(instancetype)initWithType:(NSString *)type方法里添加对应的初始化子类方法就可以了
     * 需要更改的话, 就只更改对应的子类, 其他类的计算方法不会被更改
     */
    ZYCalculate * factory = [ZYCalculateFactory createCalculate:ZYCalculateFactoryTypeMinus];
    int factoryResult = [factory calculate:10 numB:30];
    NSLog(@"继承方式的简单工厂  %@ -------- %d",factory,factoryResult);
    
    
    /**
     * 协议方式的简单工厂
     * 比起继承方式 协议方式更满足合成／组合原则
     * 其他都类似与继承方式 只是把继承改为了协议
     */
    id<ZYProtocolCalculate> procotolFactory = [ZYProtocolCalculateFactory createCalculate:ZYProtocolCalculateFactoryTypeMultiply];
    int procotolResult = [procotolFactory calculate:10 numB:20];
    NSLog(@"协议方式的简单工厂  -------- %d",procotolResult);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
