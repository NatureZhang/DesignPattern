//
//  ARC_SingleClass.h
//  LessonSingleARC_MRC
//
//  Created by zhangdong on 14/12/31.
//  Copyright (c) 2014年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  ARC下 单例的写法
 */
@interface ARC_SingleClass : NSObject

@property (nonatomic, strong) NSString *tempProperty;

+ (ARC_SingleClass *)sharedInstanc;

@end
