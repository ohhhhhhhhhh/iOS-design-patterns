//
//  ZYWebsiteFactory.h
//  22-享元模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYConcreteWebsite.h"

@interface ZYWebsiteFactory : NSObject

- (ZYConcreteWebsite *)createWebsite:(NSString *)key;

- (NSUInteger)websiteCount;

@end
