//
//  ZYMajordomo.m
//  20-职责链模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYMajordomo.h"

@implementation ZYMajordomo

-(void)requestApplication:(ZYRequest *)request{
    
    if (request.type == ZYRequestTypeOne && request.number < 7) {
        
        NSLog(@"%@   批准了  %@   %d天",self.name,request.content,request.number);
    }else{
        
        if (self.superior) {
            [self.superior requestApplication:request];
        }
    }
}

@end
