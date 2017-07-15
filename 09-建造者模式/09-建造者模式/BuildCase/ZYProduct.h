//
//  ZYProduct.h
//  09-建造者模式
//
//  Created by zy on 2017/7/13.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYProduct : NSObject

@property (nonatomic, strong) NSMutableArray * parts;

- (void)add:(NSString *)part;

- (void)show;

@end
