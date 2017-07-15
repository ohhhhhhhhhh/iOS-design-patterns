//
//  ViewController.m
//  11-抽象工厂
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYFactory.h"

#import "ZYComputer.h"
#import "ZYCellPhone.h"

#import "ZYASUSFactory.h"
#import "ZYAppleFactory.h"

#import "ZYASUSComputer.h"
#import "ZYASUSCellPhone.h"

#import "ZYAppleComputer.h"
#import "ZYAppleCellPhone.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     *  个人感觉 
     *  工厂模式 一个工厂只生产一个产品
     *  抽象工厂 一个工厂生产多个产品
     */
    
    // 如果要把华硕生产的电脑和手机变为苹果生产的 那么就换一个工厂就行了
    id<ZYComputer> asusComputer = [ZYASUSFactory createComputer];
    [asusComputer computer];
    
    id<ZYCellPhone> asusCellPhone = [ZYASUSFactory createCellPhone];
    [asusCellPhone cellPhone];
    
    
    
    id<ZYComputer> appleComputer = [ZYAppleFactory createComputer];
    [appleComputer computer];
    
    id<ZYCellPhone> appleCellPhone = [ZYAppleFactory createCellPhone];
    [appleCellPhone cellPhone];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
