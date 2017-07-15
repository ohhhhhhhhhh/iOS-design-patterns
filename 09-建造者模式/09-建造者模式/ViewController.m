//
//  ViewController.m
//  09-建造者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYDirector.h"
#import "ZYCreateBuilderA.h"
#import "ZYCreateBuilderB.h"
#import "ZYProduct.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /**
     * 个人理解 
     * 产品类(ZYProduct)是具体产品 建造的最终产出 里面是写产品的功能 建造完产品 产品要调用的方法
     * 建造者(ZYBuilder)是规定了建一个产品(ZYProduct)需要的步骤
     * 指挥者(ZYDirector)是调用建造者(ZYBuilder)里面书写的需要的步骤 按步骤创建
     * 具体建造者(ZYCreateBuilderA、ZYCreateBuilderB)实现建造者(ZYBuilder)里书写的步骤
     *
     * 如果产品没有功能 那么就可以不写(ZYProduct)类 直接在指挥者(ZYDirector)中调用-(void)paintHead写要操作的方法 -(ZYProduct *)getResult方法可以不写了
     *
     * 建造者模式和模版模式的区别 在于 建造者模式有一个指挥类 且建造者模式会"建造"出一个产品
     * 步骤固定 实现不固定
     */
    
    ZYDirector * director = [[ZYDirector alloc]init];
    
    ZYCreateBuilderA * a = [[ZYCreateBuilderA alloc]init];
    ZYCreateBuilderB * b = [[ZYCreateBuilderB alloc]init];
    
    [director director:a];
    ZYProduct * product = [a getResult];
    [product show];
    
    NSLog(@"-----------------------");
    
    [director director:b];
    ZYProduct * product1 = [b getResult];
    [product1 show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
