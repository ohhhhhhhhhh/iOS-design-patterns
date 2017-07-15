//
//  ViewController.m
//  15-组合模式
//
//  Created by zy on 2017/7/14.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ViewController.h"
#import "ZYComposite.h"
#import "ZYComponent.h"
#import "ZYLeaf.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /**
     * 组合模式 就是把树形图用代码表现出来了 
     * 一棵树 树根只有一个 可以在树根上添加树叶 也可以添加树枝(树枝上有树叶)  树叶上不能添加其他节点
     *
     * 公司的组织架构 
     * -总公司(全国)                  (Root)
     * ---研发部                     (Leaf A)
     * ---产品部                     (Leaf B)
     * ---分公司(省)               (Composite X)
     * -----分公司的研发部            (Leaf XA)
     * -----分公司的产品部            (Leaf XB)
     * -----分公司的分公司(市)      (Composite XY)
     * -------分公司的分公司的研发部    (Leaf XYA)
     * -------分公司的分公司的产品部    (Leaf XYB)
     * ---人力资源部
     */
    
    ZYComposite * composite = [[ZYComposite alloc]init];
    composite.name = @"Root";
    
    ZYLeaf * leafA = [[ZYLeaf alloc]init];
    leafA.name = @"Leaf A";
    [composite add:leafA];
    
    ZYLeaf * leafB = [[ZYLeaf alloc]init];
    leafB.name = @"Leaf B";
    [composite add:leafB];
    
    
    ZYComposite * compositeX = [[ZYComposite alloc]init];
    compositeX.name = @"Composite X";
    
    ZYLeaf * leafXA = [[ZYLeaf alloc]init];
    leafXA.name = @"Leaf XA";
    [compositeX add:leafXA];
    
    ZYLeaf * leafXB = [[ZYLeaf alloc]init];
    leafXB.name = @"Leaf XB";
    [compositeX add:leafXB];
    
    [composite add:compositeX];
    
    
    ZYComposite * compositeXY = [[ZYComposite alloc]init];
    compositeXY.name = @"Composite XY";
    
    ZYLeaf * leafXYA = [[ZYLeaf alloc]init];
    leafXYA.name = @"Leaf XYA";
    [compositeXY add:leafXYA];
    
    ZYLeaf * leafXYB = [[ZYLeaf alloc]init];
    leafXYB.name = @"Leaf XYB";
    [compositeXY add:leafXYB];
    
    [compositeX add:compositeXY];
    
    
    ZYLeaf * leafC = [[ZYLeaf alloc]init];
    leafC.name = @"Leaf C";
    [composite add:leafC];
    
    ZYLeaf * leafD = [[ZYLeaf alloc]init];
    leafD.name = @"Leaf D";
    [composite add:leafD];
    
    [composite remove:leafD];
    
    [composite display:1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
