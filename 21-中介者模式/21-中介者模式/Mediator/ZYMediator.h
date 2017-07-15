//
//  ZYMediator.h
//  21-中介者模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZYColleague;
@protocol ZYMediator <NSObject>

- (void)send:(NSString *)message colleague:(ZYColleague *)colleague;

@end
