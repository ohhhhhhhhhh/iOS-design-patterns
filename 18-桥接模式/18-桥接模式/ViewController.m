//
//  ViewController.m
//  18-桥接模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYCellPhone.h"
#import "ZYASUSCellPhone.h"
#import "ZYAppleCellPhone.h"
#import "ZYMusicSoft.h"
#import "ZYGameSoft.h"
#import "ZYAddressSoft.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    /**
     * 实现系统可能有多角度分类 每一种分类都有可能变化 那么就把这种多角度分离出来让它们独立变化 减少它们之间的耦合
     */
    
    id<ZYCellPhone> apple = [[ZYAppleCellPhone alloc]init];
    id<ZYSoftware> music = [[ZYMusicSoft alloc]initWithSoftName:@"网易云"];
    [apple installSoftware:music];
    [apple run];
    
    NSLog(@"----------------------------------");
    
    id<ZYSoftware> game = [[ZYGameSoft alloc]initWithSoftName:@"王者荣耀"];
    [apple installSoftware:game];
    [apple run];
    
    NSLog(@"----------------------------------");
    
    id<ZYSoftware> address = [[ZYAddressSoft alloc]initWithSoftName:@"通讯录"];
    [apple installSoftware:address];
    [apple run];
    
    NSLog(@"==================================");
    
    
    id<ZYCellPhone> asus = [[ZYASUSCellPhone alloc]init];
    id<ZYSoftware> music1 = [[ZYMusicSoft alloc]initWithSoftName:@"网易云"];
    [asus installSoftware:music1];
    [asus run];
    
    NSLog(@"----------------------------------");
    
    id<ZYSoftware> game1 = [[ZYGameSoft alloc]initWithSoftName:@"王者荣耀"];
    [asus installSoftware:game1];
    [asus run];
    
    NSLog(@"----------------------------------");
    
    id<ZYSoftware> address1 = [[ZYAddressSoft alloc]initWithSoftName:@"通讯录"];
    [asus installSoftware:address1];
    [asus run];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
