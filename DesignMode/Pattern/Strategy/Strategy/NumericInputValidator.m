//
//  NumericInputValidator.m
//  Strategy
//
//  Created by zhangdong on 15/9/17.
//  Copyright © 2015年 __Nature__. All rights reserved.
//

#import "NumericInputValidator.h"

@implementation NumericInputValidator

//- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error
//{
//    NSError *regError = nil;
//    NSRegularExpression *regex = [NSRegularExpression
//                                  regularExpressionWithPattern:@"^[0-9]*$"
//                                  options:NSRegularExpressionAnchorsMatchLines
//                                  error:&regError];
//    
//    NSUInteger numberOfMatches = [regex
//                                  numberOfMatchesInString:[input text]
//                                  options:NSMatchingAnchored
//                                  range:NSMakeRange(0, [[input text] length])];
//    //如果没有匹配，就返回错误和NO
//    if (numberOfMatches == 0)
//    {
//        if (error != nil)
//        {
//            NSString *description = NSLocalizedString(@"Input validation Failed", @"");
//            NSString *reason = NSLocalizedString(@"The input can contain only numerical values", @"");
//            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
//            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
//            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
//            *error = [NSError errorWithDomain:InputValidationErrorDomain code:1001 userInfo:userInfo];
//            
//        }
//        
//        return NO;
//    }
//    
//    return YES;
//}

// 2 用模板方法进行封装
- (NSDictionary *)dictionaryErrorInfo
{
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:@"^[0-9]*$" forKey:InputValidationRegexKey];
    [dic setValue:@"The input can contain only numerical values" forKey:InputValidationErrorDescKey];
    [dic setValue:@1001 forKey:InputValidationErrorCodeKey];
    
    return dic;
}


@end
