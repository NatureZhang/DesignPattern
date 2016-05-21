//
//  Philosopher.h
//  DesignPattern_DelegateProtocolPattern
//
//  Created by ZhangYu on 14-2-25.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhilosopherDelegate.h"

/*!
 *  通用（框架）类
 *
 *  @since V1.0
 */
@interface Philosopher : NSObject{
    NSTimer *timer;//计时器
    int count;//统计数
}

- (instancetype)initWithDelegateClassName:(NSString *)delegateName;

//委托对象：属性使用弱引用，是为了防止内存引用计数增加而导致委托对象无法释放
@property(nonatomic,strong) id<PhilosopherDelegate> delegate;

/*!
 *  开始执行计时器
 *
 *  @since V1.0
 */
-(void)start;
/*!
 *  处理方法
 *
 *  @since V1.0
 */
-(void)handle;

@end
