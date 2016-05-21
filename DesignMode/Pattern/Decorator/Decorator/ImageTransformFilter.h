//
//  ImageTransformFilter.h
//  Decorator
//
//  Created by zhangdong on 15/9/9.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageTransformFilter : ImageFilter
{
    @private
    CGAffineTransform transform_;
}

@property (nonatomic, assign) CGAffineTransform transform;
- (id)initWithImageComponent:(id<ImageComponent>)component
                   transform:(CGAffineTransform)transform;
- (void)apply;//重写父类的方法需要声明吗？
@end
