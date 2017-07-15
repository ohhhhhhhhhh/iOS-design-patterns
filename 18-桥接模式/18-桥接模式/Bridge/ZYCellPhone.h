//
//  ZYCellPhone.h
//  18-桥接模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYSoftware.h"

@protocol ZYCellPhone <NSObject>

@property (nonatomic,  weak) id<ZYSoftware>software;

- (void)installSoftware:(id<ZYSoftware>)software;

- (void)run;

@end
