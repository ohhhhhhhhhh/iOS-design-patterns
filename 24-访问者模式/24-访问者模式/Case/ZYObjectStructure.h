//
//  ZYObjectStructure.h
//  24-访问者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYElement.h"
#import "ZYVisitor.h"

@interface ZYObjectStructure : NSObject

@property (nonatomic, strong) NSMutableArray<ZYElement *> * lists;

- (void)attach:(ZYElement *)element;

- (void)detach:(ZYElement *)element;

- (void)accept:(ZYVisitor *)visitor;

@end
