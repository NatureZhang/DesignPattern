//
//  MainBoardBase.h
//  DesignPattern_AbstractFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 *  CPU父类
 *
 *  @since V1.0
 */
@interface MainBoardBase : NSObject

@property int cpuHoles;//CPU插槽数
-(void)installCpuHoles;//统计CPU插槽数

@end
