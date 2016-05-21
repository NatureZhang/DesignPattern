//
//  Operation.h
//  DesignPattern_SimpleFactoryPattern
//
//  Created by ZhangYu on 14-2-20.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperationProtocol.h"

/*!
 *  操作方法父类
 *
 *  @since V1.0
 */
@interface Operation : NSObject<OperationProtocol>

@property double firstNum;//第一个操作数
@property double secondNum;//第二个操作数

@end
