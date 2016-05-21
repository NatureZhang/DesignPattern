//
//  TemplateMethod.h
//  TemplateMethod
//
//  Created by zhangdong on 15/9/11.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TemplateMethod : NSObject

- (void)demoTemplateMethod;
@end
/**
 *  模板方法的基本思想：
 *  在抽象类的一个方法中定义“标准”算法。在这个方法中调用的基本操作应由子类重载予以实现。这个方法被称为模板，因为方法定义的算法缺少一些特有的操作
 */