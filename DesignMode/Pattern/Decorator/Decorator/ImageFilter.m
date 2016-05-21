//
//  ImageFilter.m
//  Decorator
//
//  Created by zhangdong on 15/9/9.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter
- (void)apply
{
    //应该由子类重载，应用真正的滤镜
}
- (id)initWithImageComponent:(id <ImageComponent>)component
{
    
    if (self = [super init]) {
        //保存component
        [self setComponent:component];
    }
    
    return self;
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    NSString *selectName = NSStringFromSelector(aSelector);
    if ([selectName hasPrefix:@"draw"]) {
        [self apply];
    }
    return _component;
}
@end
