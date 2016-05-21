//
//  NimoWheel.m
//  Visitor
//
//  Created by zhangdong on 15/8/26.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "NimoWheel.h"

@implementation NimoWheel
- (instancetype)init
{
    self = [super init];
    if (self) {
        _diameter = 400.f;
    }
    return self;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"Wheel：%f", _diameter];
}
- (void)acceptComponentVisitor:(id<NimoComponentVisitor>)visitor
{
    [visitor visitWheel:self];
}
@end
