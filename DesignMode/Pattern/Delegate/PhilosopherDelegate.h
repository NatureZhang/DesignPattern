//
//  PhilosopherDelegate.h
//  DesignPattern_DelegateProtocolPattern
//
//  Created by ZhangYu on 14-2-25.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>


/*!
 *  委托接口，哲学家接口
 *
 *  @since V1.0
 */
@protocol PhilosopherDelegate <NSObject>

@required
-(void)sleep;
-(void)eat;
-(void)work;

@end
