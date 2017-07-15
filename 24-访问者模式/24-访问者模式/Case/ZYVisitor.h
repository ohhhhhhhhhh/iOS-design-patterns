//
//  ZYVisitor.h
//  24-访问者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYConcreteElementA.h"
#import "ZYConcreteElementB.h"

@interface ZYVisitor : NSObject

- (void)visitoConcreteElementA:(ZYConcreteElementA *)elementA;

- (void)visitoConcreteElementB:(ZYConcreteElementB *)elementB;

@end
