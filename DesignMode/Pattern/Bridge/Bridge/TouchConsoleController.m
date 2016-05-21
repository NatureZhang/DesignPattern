//
//  TouchConsoleController.m
//  Bridge
//
//  Created by zhangdong on 15/7/22.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "TouchConsoleController.h"
#import "ConsoleCommands.h"
@implementation TouchConsoleController
- (void) up
{
    [super setCommond:kConsoleCommandUp];
}

- (void) down
{
    [super setCommond:kConsoleCommandDown];
}

- (void) left
{
    [super setCommond:kConsoleCommandLeft];
}

- (void) right
{
    [super setCommond:kConsoleCommandRight];
}

- (void) select
{
    [super setCommond:kConsoleCommandSelect];
}

- (void) start
{
    [super setCommond:kConsoleCommandStart];
}

- (void) action1
{
    [super setCommond:kConsoleCommandAction1];
}

- (void) action2
{
    [super setCommond:kConsoleCommandAction2];
}
@end
