//
//  ZYRequest.h
//  20-职责链模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ZYRequestType) {

    ZYRequestTypeOne = 1, 
    ZYRequestTypeTwo,
};

@interface ZYRequest : NSObject

@property (nonatomic, assign) int number;

@property (nonatomic, assign) ZYRequestType type;

@property (nonatomic,   copy) NSString * content;

- (instancetype)initWithType:(ZYRequestType)type number:(int)number content:(NSString *)content;

@end
