//
//  ConsoleController.m
//  Bridge
//
//  Created by zhangdong on 15/7/22.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "ConsoleController.h"

@implementation ConsoleController

- (void)setCommond:(ConsoleCommand)command
{
    [_emulator loadInstructionsForCommand:command];
    [_emulator executeInstructions];
}
@end
