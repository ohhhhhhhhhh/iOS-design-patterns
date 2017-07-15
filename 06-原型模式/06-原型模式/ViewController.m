//
//  ViewController.m
//  06-原型模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYWord.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ZYWord * word = [[ZYWord alloc]init];
    word.name     = @"ohhh";
    word.company  = @"ohhhhhhhhh";
    word.age      = 19;
    word.sex      = 1;
    // 标识 0:浅复制 copy出来的对象用的是同一个内存  1:深复制 copy出来的对象用的是不同的内存
    word.flag     = 1;
    
    ZYWord * word1 = [word copy];
    ZYWord * word2 = [word copy];
    
    NSLog(@"word  = %p",word);
    NSLog(@"word1 = %p",word1);
    NSLog(@"word2 = %p",word2);
    

    word1.company = @"kkkkkkkkkk";
    word1.sex     = 0;
    
    word2.name    = @"zy";
    word2.age     = 23;
    
    NSLog(@"word: name  = %@ ,company  = %@ ,age  = %d ,sex  = %d",word.name,word.company,word.age,word.sex);
    NSLog(@"word1: name = %@ ,company = %@ ,age = %d ,sex = %d",word1.name,word1.company,word1.age,word1.sex);
    NSLog(@"word2: name = %@ ,company = %@ ,age = %d ,sex = %d",word2.name,word2.company,word2.age,word2.sex);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
