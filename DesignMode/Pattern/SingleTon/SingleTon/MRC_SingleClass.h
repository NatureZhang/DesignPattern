//
//  MRC_SingleClass.h
//  LessonSingleARC_MRC
//
//  Created by zhangdong on 14/12/31.
//  Copyright (c) 2014年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  非ARC下的实现方法如下所示
 */

@interface MRC_SingleClass : NSObject

@property (nonatomic, retain) NSString * tempProperty;

/**
 *  获取一个sharedInstanc 的实例，如果有必要的话，实例化一个
 *
 *  @return 一个单利
 */
+ (MRC_SingleClass *)sharedInstance;

@end
