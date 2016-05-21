//
//  MRC_SingleClass.m
//  LessonSingleARC_MRC
//
//  Created by zhangdong on 14/12/31.
//  Copyright (c) 2014年 __Nature__. All rights reserved.
//

#import "MRC_SingleClass.h"

@implementation MRC_SingleClass

static MRC_SingleClass * sharedInstance = nil;

/**
 *  严格的单例，只实例化一个单例，不管通过什么方法
 */

// 这样实现的单例是线程不安全的，如果多个线程同时调用sharedInstance, 这个方法可能同时被调用多次，不同线程获得的可能就不是同一个实例，解决办法是加上互斥锁
//+ (MRC_SingleClass *)sharedInstance
//{
//    if (sharedInstance == nil)
//    {
//        sharedInstance = [[super allocWithZone:NULL] init];
//    }
//    
//    return sharedInstance;
//}

+ (MRC_SingleClass *)sharedInstance
{
    @synchronized(self)
    {
        if (sharedInstance == nil)
        {
            sharedInstance = [[super allocWithZone:NULL] init];
        }
    }
    
    return sharedInstance;
}


// 当第一次使用这个单利时，会调用这个init方法
- (id)init
{
    self = [super init];
    if (self)
    {
        // 通常在这里做一些相关的初始化任务
    }
    return  self;
}

// 这个dealloc方法永远都不会被调用--因为在程序的生命周期中，该单例一直存在，所以该方法不用实现
- (void)dealloc
{
    [super dealloc];
}

// 通过返回当前的shareInstance 实例，就能防止实例化一个新的对象
// alloc 实际上也是调用 allocWithZone:NULL 在默认内存区域创建
+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [[self sharedInstance] retain];
}

// 不希望生成单例的多个拷贝
- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

// 什么也不做--该单例并不需要一个引用计数
- (id)retain
{
    return self;
}

// 替换掉引用计数--这样就不会release这个单例
- (NSUInteger)retainCount
{
    return NSUIntegerMax;
}

// 该方法是空的--不希望用户release掉这个对象
- (oneway void)release
{
    
}

// 除了返回单例外，什么也不做
- (id)autorelease
{
    return self;
}
@end
