//
//  CustomTextField.m
//  Strategy
//
//  Created by zhangdong on 15/9/17.
//  Copyright © 2015年 __Nature__. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)validate
{
    NSError *error = nil;
    BOOL validationResult = [_inputValidator validateInput:self error:&error];
    if (!validationResult)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[error localizedDescription]
                                                            message:[error localizedFailureReason]
                                                           delegate:nil
                                                  cancelButtonTitle:NSLocalizedString(@"OK", @"")
                                                  otherButtonTitles: nil];
        
        [alertView show];
    }
    
    return validationResult;
}
@end
