//
//  ZYWork.h
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYWork : NSObject

@property (nonatomic,   copy) NSString * workName;

- (instancetype)initWithWorkName:(NSString *)work;

- (void)work;

@end
