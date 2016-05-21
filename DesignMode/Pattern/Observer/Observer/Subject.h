//
//  Subject.h
//  DesignPattern_ObserverPattern
//
//  Created by ZhangYu on 14-2-26.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Observer;

/*!
 *  抽象主题协议
 *
 *  @since V1.0
 */
@protocol Subject <NSObject>

@required

/*!
 *  增加观察者
 *
 *  @param observer 观察者实例
 *
 *  @since V1.0
 */
-(void)attach:(Observer*) observer;
/*!
 *  移除观察者
 *
 *  @param observer 观察者实例
 *
 *  @since V1.0
 */
-(void)detach:(Observer*) observer;
/*!
 *  为观察者发送通知
 *
 *  @since V1.0
 */
-(void)notifyObservers;

@end
