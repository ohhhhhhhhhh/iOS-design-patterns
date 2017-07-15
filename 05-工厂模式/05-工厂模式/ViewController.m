//
//  ViewController.m
//  05-工厂模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYCalculate.h"
#import "ZYFactoryMultiply.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 其实就是相当于把工厂又封装了一层
     */
    id<ZYCalculate> factory = [ZYFactoryMultiply createCalculate];
    int result = [factory calculate:6 numB:19];
    NSLog(@"result = %d",result);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
