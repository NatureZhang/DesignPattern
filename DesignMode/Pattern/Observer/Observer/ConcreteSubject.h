//
//  ConcreteSubject.h
//  DesignPattern_ObserverPattern
//
//  Created by ZhangYu on 14-2-26.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

/*!
 *  具体主题类
 *
 *  @since V1.0
 */
@interface ConcreteSubject : NSObject<Subject>
{
    NSMutableArray *observers;
}
@property(nonatomic,strong)NSMutableArray* observers;
/*!
 *  单例构建自身对象
 *
 *  @return 自身对象
 *
 *  @since V1.0
 */
+(ConcreteSubject*)shareConcreteSubject;

@end
