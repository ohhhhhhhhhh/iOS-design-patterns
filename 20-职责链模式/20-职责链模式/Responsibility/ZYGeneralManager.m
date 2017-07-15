//
//  ZYGeneralManager.m
//  20-职责链模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYGeneralManager.h"

@implementation ZYGeneralManager

-(void)requestApplication:(ZYRequest *)request{
    
    if (request.type == ZYRequestTypeOne && request.number < 15) {
        
        NSLog(@"%@ 批准了  %@   %d天",self.name,request.content,request.number);
    }else if(request.type == ZYRequestTypeTwo && request.number <= 500){
        
        NSLog(@"%@ 批准了  %@   %d元",self.name,request.content,request.number);
    }else if(request.type == ZYRequestTypeTwo && request.number > 500) {
        
        NSLog(@"%@ 拒绝了  %@   %d元",self.name,request.content,request.number);
    }else{
        NSLog(@"%@ 不予处理 %@   %d元",self.name,request.content,request.number);
    }
}

@end
