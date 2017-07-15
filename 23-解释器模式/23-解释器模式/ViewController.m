//
//  ViewController.m
//  23-解释器模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYPlayContext.h"
#import "ZYTerminalExpression.h"
#import "ZYNonterminalExpression.h"
#import "ZYAbstractExpression.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 自己定义一个格式 然后按照格式解析
     * 输入完成用<ZYNonterminalExpression>解析 没输入完成用<ZYTerminalExpression>解析
     */
    
    ZYPlayContext * context = [[ZYPlayContext alloc]init];
    NSMutableArray<id<ZYAbstractExpression>> * list = [NSMutableArray array];
    
    [list addObject:[[ZYTerminalExpression alloc]init]];
    [list addObject:[[ZYNonterminalExpression alloc]init]];
    [list addObject:[[ZYTerminalExpression alloc]init]];
    [list addObject:[[ZYTerminalExpression alloc]init]];
    
    [list enumerateObjectsUsingBlock:^(id<ZYAbstractExpression>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [obj interpret:context];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
