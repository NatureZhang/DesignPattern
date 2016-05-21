//
//  OperationFactory.h
//  DesignPattern_SimpleFactoryPattern
//
//  Created by ZhangYu on 14-2-20.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Operation.h"
#import "OperationAdd.h"
#import "OperationSub.h"
#import "OperationMultiply.h"
#import "OperationDivide.h"
/*!
 *  操作工厂类
 *
 *  @since V1.0
 */
@interface OperationFactory : NSObject

//获得操作对象
+(Operation*)createOperate:(NSString*)operateStr;

@end
