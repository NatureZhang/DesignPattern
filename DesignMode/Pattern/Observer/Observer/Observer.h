//
//  Observer.h
//  DesignPattern_ObserverPattern
//
//  Created by ZhangYu on 14-2-26.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 *  观察者协议
 *
 *  @since V1.0
 */
@protocol Observer <NSObject>

@required
-(void)update;

@end
