//
//  FactoryProtocol.h
//  DesignPattern_FactoryMethodPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

/*!
 *  工厂协议接口
 *
 *  @since V1.0
 */
@protocol IFactoryProtocol <NSObject>

-(Operation*)createOperate;

@end
