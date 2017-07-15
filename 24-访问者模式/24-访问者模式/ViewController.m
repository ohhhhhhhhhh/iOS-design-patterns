//
//  ViewController.m
//  24-访问者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYObjectStructure.h"
#import "ZYConcreteElementA.h"
#import "ZYConcreteElementB.h"
#import "ZYConcreteVisitorA.h"
#import "ZYConcreteVisitorB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 同一个对象 对同一个的访问者有不同的反应
     * 男人女人  对同一件事的反应是不一样的
     */
    
    ZYObjectStructure * object = [[ZYObjectStructure alloc]init];
    [object attach:[[ZYConcreteElementA alloc]init]];
    [object attach:[[ZYConcreteElementB alloc]init]];
    
    ZYConcreteVisitorA * A = [[ZYConcreteVisitorA alloc]init];
    ZYConcreteVisitorB * B = [[ZYConcreteVisitorB alloc]init];
    
    [object accept:A];
    [object accept:B];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
