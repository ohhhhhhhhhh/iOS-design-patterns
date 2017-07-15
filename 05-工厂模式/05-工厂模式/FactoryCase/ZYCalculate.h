//
//  ZYCalculate.h
//  05-工厂模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZYCalculate <NSObject>

- (int)calculate:(int)numA numB:(int)numB;

@end
