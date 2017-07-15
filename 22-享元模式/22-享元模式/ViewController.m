//
//  ViewController.m
//  22-享元模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYUser.h"
#import "ZYConcreteWebsite.h"
#import "ZYWebsiteFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     * 虽然用户不同 但是网站分类是相同的 
     * 
     * 内部状态 在享元对象内部并且不会随着环境改变而改变的部分
     * 外部状态 随环境改变而改变 不可以共享的状态
     *
     * 有时需要生成大量细粒度的类实例来表示数据 如果能发现这些实例除了几个参数外基本都是相同的 有时就能够大幅度的减少需要实例化的类的数量
     * 如果能把参数移到类实例的外面 在方法调用时将它们传递进来 就可以通过共享大幅度的减少单个实例的数目
     *
     * 解决对象的开销问题 运行的资源与性能损耗
     */
    
    ZYWebsiteFactory * factory = [[ZYWebsiteFactory alloc]init];
    
    ZYConcreteWebsite * website = [factory createWebsite:@"AAA"];
    ZYUser * user = [[ZYUser alloc]initWithName:@"小明"];
    [website use:user];
    
    ZYConcreteWebsite * website1 = [factory createWebsite:@"AAA"];
    ZYUser * user1 = [[ZYUser alloc]initWithName:@"小红"];
    [website1 use:user1];
    
    ZYConcreteWebsite * website2 = [factory createWebsite:@"AAA"];
    ZYUser * user2 = [[ZYUser alloc]initWithName:@"小绿"];
    [website2 use:user2];
    
    ZYConcreteWebsite * website3 = [factory createWebsite:@"BBB"];
    ZYUser * user3 = [[ZYUser alloc]initWithName:@"小粉"];
    [website3 use:user3];
    
    ZYConcreteWebsite * website4 = [factory createWebsite:@"BBB"];
    ZYUser * user4 = [[ZYUser alloc]initWithName:@"小黑"];
    [website4 use:user4];
    
    NSLog(@"网站总数: %ld",[factory websiteCount]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
