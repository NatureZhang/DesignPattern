//
//  ConsoleEmulator.h
//  Bridge
//
//  Created by zhangdong on 15/7/22.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleCommands.h"
@interface ConsoleEmulator : NSObject

- (void) loadInstructionsForCommand:(ConsoleCommand)command;
- (void) executeInstructions;

@end
