//
//  ZYComponent.h
//  15-组合模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZYComponent <NSObject>

@property (nonatomic,   copy) NSString * name;

- (void)add:(id<ZYComponent>)component;

- (void)remove:(id<ZYComponent>)component;

- (void)display:(int)depth;

@end
