//
//  DecoratorView.m
//  Decorator
//
//  Created by zhangdong on 15/9/9.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "DecoratorView.h"

@implementation DecoratorView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [_image drawInRect:rect];
}


@end
