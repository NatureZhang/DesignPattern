//
//  AnySandwich.h
//  TemplateMethod
//
//  Created by zhangdong on 15/9/11.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnySandwich : NSObject

- (void)make; //制作三明治的模板方法

// 制作三明治的步骤
- (void)prepareBread;
- (void)putBreadOnPlate;
- (void)addMeat;
- (void)addCondiments;
- (void)extraStep;//额外步骤（这是钩子方法）在抽象类中这个方法默认什么也不做，子类可以重载，将额外的步骤随意添加到这个方法中。UIView的drawRect: 方法就是这种形式的钩子方法
- (void)server;

/**
 *  共同的步骤在抽象类中实现，而不同的步骤则需要子类进行重载
 */

@end

/**
 *  抽象类不完整的定义了一些方法与算法，留出一些操作未作定义。方法中未定义的部分由子类重载来填补
 */