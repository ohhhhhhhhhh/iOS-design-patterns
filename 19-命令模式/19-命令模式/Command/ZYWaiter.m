//
//  ZYWaiter.m
//  19-命令模式
//
//  Created by zy on 2017/7/15.
//  Copyright © 2017年 zy. All rights reserved.
//

#import "ZYWaiter.h"


@interface ZYWaiter ()

@property (nonatomic,  strong) NSMutableArray<ZYWork *> * works;

@end

@implementation ZYWaiter

-(NSMutableArray *)works{
    
    if (!_works) {
        _works = [NSMutableArray array];
    }
    return _works;
}

-(void)addWork:(ZYWork *)work{
    
    if ([work.workName isEqualToString:@"蜂蜜柚子茶"]){
        NSLog(@"蜂蜜柚子茶没有了 换一个吧");
    }else{
         [self.works addObject:work];
    }
}

-(void)removeWork:(ZYWork *)work{
    
    NSLog(@">>>>>>>>  %@ 不要了 ",work.workName);
    [self.works removeObject:work];
}

-(void)doWork{
    
    NSLog(@"================ 点餐完毕 ================");
    
    [self.works enumerateObjectsUsingBlock:^(ZYWork *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj work];
    }];
}

- (void)showWork{
    
    NSLog(@"------------- 已点的菜: -------------\n");
    [self.works enumerateObjectsUsingBlock:^(ZYWork * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@",obj.workName);
    }];
}

@end
