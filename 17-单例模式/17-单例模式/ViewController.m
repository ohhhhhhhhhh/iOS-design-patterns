//
//  ViewController.m
//  17-单例模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /**
     * 保证一个类仅有一个实例 并提供一个访问它的全局访问点
     * 单例的实现
     * 懒加载: 如果以前没创建过实例 那么就创建一个实例  如果以前创建过实例 那么就用以前创建的实例
     * 锁   : 多线程访问的时候 有时候会反复创建 尽管代码已经是懒加载 由于线程不同 还是可能会重复创建 所以加锁保证只创建一个实例
              加锁的位置一定要注意
     * OC 已经用GCD很好的实现了 用就行了
     */
    ZYSingleton * single  = [ZYSingleton shareSingleton];
    ZYSingleton * single1 = [ZYSingleton shareSingleton];
    ZYSingleton * single2 = [ZYSingleton shareSingleton];
    
    NSLog(@"\n single  = %p \n single1 = %p \n single2 = %p",single,single1,single2);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
