//
//  OperationManager.h
//  SimpleFactory
//
//  Created by zhangdong on 15/5/18.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OperationManager : NSObject
+ (OperationManager *)getInstance;

@property (nonatomic, strong) NSMutableDictionary *dictOperation;

@end
