//
//  ZYSoftware.h
//  18-桥接模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZYSoftware <NSObject>

@property (nonatomic,   copy) NSString * name;

- (instancetype)initWithSoftName:(NSString *)name;

- (void)run;

@end
