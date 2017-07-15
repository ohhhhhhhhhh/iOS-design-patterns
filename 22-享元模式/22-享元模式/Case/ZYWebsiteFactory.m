//
//  ZYWebsiteFactory.m
//  22-享元模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYWebsiteFactory.h"

@interface ZYWebsiteFactory ()

@property (nonatomic, strong) NSMutableDictionary * websites;

@end

@implementation ZYWebsiteFactory

-(NSMutableDictionary *)websites{
    
    if (!_websites) {
        _websites = [NSMutableDictionary dictionary];
    }
    return _websites;
}

-(ZYConcreteWebsite *)createWebsite:(NSString *)key{
    
    id<ZYWebsite> website = [self.websites objectForKey:key];
    
    if (!website) {
        website = [[ZYConcreteWebsite alloc]initWithName:key];
        [self.websites setObject:website forKey:key];
    }
    return website;
}

- (NSUInteger)websiteCount{
    return self.websites.allKeys.count;
}

@end
