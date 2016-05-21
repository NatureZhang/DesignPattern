//
//  ARC_SingleClass.m
//  LessonSingleARC_MRC
//
//  Created by zhangdong on 14/12/31.
//  Copyright (c) 2014年 __Nature__. All rights reserved.
//

#import "ARC_SingleClass.h"


@implementation ARC_SingleClass

//ARC + GCD 线程安全的单例模式

+ (ARC_SingleClass *)sharedInstanc
{
    static ARC_SingleClass *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

// 当第一次使用这个单例时，会调用这个init方法
- (id)init
{
    self = [super init];
    if (self) {
        // 通常在这里做一些相关的初始化任务
    }
    return self;
}
@end
