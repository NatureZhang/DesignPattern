//
//  InputValidator.h
//  Strategy
//
//  Created by zhangdong on 15/9/17.
//  Copyright © 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
static NSString *const InputValidationErrorDomain = @"InputValidationErrorDomain";
static NSString *const InputValidationRegexKey  = @"InputValidationRegexKey";
static NSString *const InputValidationErrorDescKey = @"InputValidationErrorDescKey";
static NSString *const InputValidationErrorCodeKey = @"InputValidationErrorCodeKey";

@interface InputValidator : NSObject
{
    
}

// 验证策略的存根方法
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

- (NSDictionary *)dictionaryErrorInfo;
@end
