//
//  ImageFilter.h
//  Decorator
//
//  Created by zhangdong on 15/9/9.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageComponent.h"
#import "UIImage+ImageComponent.h"
@interface ImageFilter : NSObject<ImageComponent>
{
    @private
    id <ImageComponent> component_;
}

@property (nonatomic, retain) id<ImageComponent> component;

- (void)apply;
- (id)initWithImageComponent:(id <ImageComponent>)component;
- (id)forwardingTargetForSelector:(SEL)aSelector;
@end
