//
//  ZYElement.h
//  24-访问者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZYVisitor;
@interface ZYElement : NSObject

- (void)accept:(ZYVisitor *)visitor;

@end
