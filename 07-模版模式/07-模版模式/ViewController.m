//
//  ViewController.m
//  07-模版模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYStudentA.h"
#import "ZYStudentB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 不变的放到父类 变化的放在子类中
     * 步骤都已经在父类中确定好了 
     */
    ZYStudentA * studentA = [[ZYStudentA alloc]init];
    [studentA questionA];
    [studentA questionB];
    
    
    ZYStudentB * studentB = [[ZYStudentB alloc]init];
    [studentB questionA];
    [studentB questionB];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
