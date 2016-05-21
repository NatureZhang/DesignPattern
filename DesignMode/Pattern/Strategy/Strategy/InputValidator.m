//
//  InputValidator.m
//  Strategy
//
//  Created by zhangdong on 15/9/17.
//  Copyright © 2015年 __Nature__. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator
//- (BOOL)validateInput:(UITextField *)input error:(NSError **)error
//{
//    if (error)
//    {
//        *error = nil;
//    }
//    return NO;
//}

// 使用模板方法进行改造
- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error
{
    // 提取其中的error信息
    NSDictionary *dicErrorInfo = [self dictionaryErrorInfo];
    NSString *regexString = [dicErrorInfo objectForKey:InputValidationRegexKey];
    NSString *errorDesc = [dicErrorInfo objectForKey:InputValidationErrorDescKey];
    NSInteger errorCode = [[dicErrorInfo objectForKey:InputValidationErrorCodeKey] integerValue];
    
    // error
    NSError *regError = nil;
    // 正则表达式的匹配
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:regexString
                                  options:NSRegularExpressionAnchorsMatchLines
                                  error:&regError];
    // 匹配正则表达式的个数
    NSUInteger numberOfMatches = [regex
                                  numberOfMatchesInString:[input text]
                                  options:NSMatchingAnchored
                                  range:NSMakeRange(0, [[input text] length])];
    //如果没有匹配，就返回错误和NO
    if (numberOfMatches == 0)
    {
        if (error != nil)
        {
            NSString *description = NSLocalizedString(@"Input validation Failed", @"");
            NSString *reason = NSLocalizedString(errorDesc, @"");
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain code:errorCode userInfo:userInfo];
            
        }
        
        return NO;
    }
    
    return YES;
}

- (NSDictionary *)dictionaryErrorInfo
{
    return nil;
}
@end
