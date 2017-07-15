//
//  ZYAbstractExpression.h
//  23-解释器模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYPlayContext.h"

@protocol ZYAbstractExpression <NSObject>

- (void)interpret:(ZYPlayContext *)context;

@end
