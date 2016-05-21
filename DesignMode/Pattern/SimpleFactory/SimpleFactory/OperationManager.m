//
//  OperationManager.m
//  SimpleFactory
//
//  Created by zhangdong on 15/5/18.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "OperationManager.h"
static OperationManager *operationManager = nil;

@implementation OperationManager
+ (OperationManager *)getInstance
{
    @synchronized(self)
    {
        // 实例对象只分配一次
        if(operationManager == nil)
        {
            operationManager = [[OperationManager alloc] init];
            operationManager.dictOperation = [[NSMutableDictionary alloc] init];
        }
    }
    
    return operationManager;
}


@end
