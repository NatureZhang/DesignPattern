//
//  FactoryBase.h
//  DesignPattern_AbstractFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CpuBase.h"
#import "MainBoardBase.h"

/*!
 *  工厂基类
 *
 *  @since V1.0
 */
@interface FactoryBase : NSObject
/*!
 *  创建CPU
 *  @return 返回CPU实例
 *
 *  @since V1.0
 */
-(CpuBase*)createCpu;
/*!
 *  创建主板
 *
 *  @return 返回主板实例
 *
 *  @since V1.0
 */
-(MainBoardBase*)createMainBoard;

@end
