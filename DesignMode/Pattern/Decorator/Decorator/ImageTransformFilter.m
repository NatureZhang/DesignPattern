//
//  ImageTransformFilter.m
//  Decorator
//
//  Created by zhangdong on 15/9/9.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "ImageTransformFilter.h"

@implementation ImageTransformFilter

- (id)initWithImageComponent:(id<ImageComponent>)component
                   transform:(CGAffineTransform)transform
{
    if (self = [super initWithImageComponent:component])
    {
        [self setTransform:transform];
    }
    
    return self;
}
- (void)apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //设置变换
    CGContextConcatCTM(context, _transform);
}
@end
