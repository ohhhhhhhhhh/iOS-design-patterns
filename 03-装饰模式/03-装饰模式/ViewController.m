//
//  ViewController.m
//  03-装饰模式
//
//  Created by zy on 2017/7/12.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYPerson.h"

#import "ZYDecoratorPerson.h"
#import "ZYDecoratorShoes.h"
#import "ZYDecoratorClothes.h"
#import "ZYDecoratorGlasses.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 人穿衣服
     * 根据策略模式和简单工厂模式  我们应该先建一个服饰类 然后让下面三个方法继承或以协议的方式实现 这里不再赘述
     */
    ZYPerson * p = [[ZYPerson alloc]init];
    p.name = @"ohhh";
    [p wearClothes];
    [p wearShoes];
    [p wearGlasses];
    [p showLog];
    
    NSLog(@"--------------------------------------------");
    
    /**
     * 装饰类
     *
     * 1.就是先建一个被装饰类(ZYDecoratorPerson) 如果被装饰类不只一个的话 就先建一个被装饰父类(这里没有) 里面写需要被别人装饰的方法(-(void)showLog)
     * 2.建一个装饰类(ZYDecorator) 装饰类继承被装饰父类(如果有的话 没有的话就继承被装饰类ZYDecoratorPerson) 
            定义一个被装饰类(ZYDecoratorPerson)类型的属性A 
            公开一个装饰被装饰类(ZYDecoratorPerson)的方法(- (void)decorator:(ZYDecoratorPerson *)person) 
                方法内部实现把外界传过来的被装饰类赋值给属性A
            重写被装饰类中需要被装饰的方法(-(void)showLog)
                在方法内部进行判断 如果属性A存在的话 就调用A的(-(void)showLog)方法
     * 3.根据需求建立装饰子类(如果只有一个装饰子类的话 就直接用装饰类就行) 装饰子类继承装饰类 然后重写方法(-(void)showLog) 注意方法里要实现父类的方法 然后书写装饰子类需要写的方法 这两个方法的顺序依需求定
     * 4.外部先调用被装饰类创建一个实例 然后再调用装饰子类 并把被装饰类实例传进去 调用装饰方法
     *
     * 优点
     *  1. 降低被装饰类的复杂度 且原有的代码及主要逻辑不用更改
     *  2. 执行一些特殊行为时 外界可以对对象有选择 有顺序的执行一些代码
     *  3. 新加入的东西仅仅是为了满足一些只在某种特定情况下才会执行的特殊行为的需要
     *  4. 把类中的装饰功能从类中搬移去除 这样就可以简化原有的类
     *  5. 有效的把类的核心职责和装饰功能区分开了 去除相关类中重复的装饰逻辑
     */
    ZYDecoratorPerson * person = [[ZYDecoratorPerson alloc]init];
    person.name = @"ohhh";
    
    ZYDecoratorClothes * clothes = [[ZYDecoratorClothes alloc]init];
    ZYDecoratorShoes * shoes = [[ZYDecoratorShoes alloc]init];
    ZYDecoratorGlasses * glasses = [[ZYDecoratorGlasses alloc]init];
    
    // 一层一层的装饰
    [glasses decorator:person];
    [shoes   decorator:glasses];
    [clothes decorator:shoes];
    
    // 最后调用方法
    [clothes showLog];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
