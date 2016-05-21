//
//  TemplateMethod.m
//  TemplateMethod
//
//  Created by zhangdong on 15/9/11.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "TemplateMethod.h"
#import "AnySandwich.h"
#import "ReubenSandwich.h"

@implementation TemplateMethod

- (void)demoTemplateMethod
{
    AnySandwich *reubenSandwich = [[ReubenSandwich alloc] init];
    
    [reubenSandwich make];
}
@end
