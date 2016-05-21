//
//  AnySandwich.m
//  TemplateMethod
//
//  Created by zhangdong on 15/9/11.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "AnySandwich.h"

@implementation AnySandwich
- (void)make
{
    [self prepareBread];
    [self putBreadOnPlate];
    [self addMeat];
    [self addCondiments];
    [self extraStep];
    [self server];
}

- (void)putBreadOnPlate
{
    // 做任何三明治都要把面包放到盘子上
    NSLog(@"把面包放到盘子上");
}

- (void)server
{
    // 任何三明治做好了都要放到盘子上
    NSLog(@"%@三明治做好了，请慢用", [self class]);
}

#pragma mark -
#pragma Details will be handled by subclasses

- (void)prepareBread
{
    // 要保证子类重载这个方法 否则抛出异常
    [NSException raise:NSInternalInconsistencyException format:@"你必须在子类中重写%@", NSStringFromSelector(_cmd)];
}

- (void)addMeat
{
    // 要保证子类重载这个方法 否则抛出异常
    [NSException raise:NSInternalInconsistencyException format:@"你必须在子类中重写%@", NSStringFromSelector(_cmd)];
}

- (void)addCondiments
{
    // 要保证子类重载这个方法 否则抛出异常
    [NSException raise:NSInternalInconsistencyException format:@"你必须在子类中重写%@", NSStringFromSelector(_cmd)];
}

- (void)extraStep
{
    // 钩子方法 默认什么也不做，有子类重载以实现添加额外的行为！！！ 不实现也不会有副作用
}
@end
