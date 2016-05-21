//
//  NimoEngine.m
//  Visitor
//
//  Created by zhangdong on 15/8/26.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "NimoEngine.h"

@implementation NimoEngine
- (id)initWithModelName:(NSString *)modelName
{
    self = [super init];
    if (self) {
        _modelName = [modelName copy];
    }
    return self;
}

- (id)init
{
    return [self initWithModelName:@"Slant 6"];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Engine: %@", _modelName];
}

- (void)acceptComponentVisitor:(id<NimoComponentVisitor>)visitor
{
    [visitor visitEngine:self];
}
@end
