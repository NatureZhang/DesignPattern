//
//  说明.h
//  ClassRelation
//
//  Created by zhangdong on 15/5/13.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#ifndef ClassRelation____h
#define ClassRelation____h

/**
    这个模块说明的是类之间的关系
 1. 依赖关系（也叫做相识关系）：对于两个相对独立的对象，当一个对象负责构造另一个对象的实例，或者依赖另一个对象提供的服务时，这两个对象之间主要体现为依赖关系。
    例如：一个类作为另一个类的方法中的参数

 2. 关联关系：Father 中有 Son，Son 中有 Father。
    注：这个在相互引用时 要注意避免造成循环引用
 
 3. 聚合关系：关联关系的一种，耦合度强于关联，关联关系的对象之间是相互独立的，而聚合关系的对象之间存在着包容关系
    例如：People类中有Car，这个car是通过people调用 设置的
 
 4. 组合关系：组合是一种耦合度更强的关联关系。存在组合关系的类表示“整体-部分”的关联关系，整体负责部分的生命周期，他们之间是共生共死的，并且“部分”单独存在时没有任何意义
    例如：People类中的Body，people实例化的时候，body也相应的进行了实例化。
 
 -(People*)init
 {
 self = [super init];
 if (self!=nil) {
 body = [[Body alloc] init];
 }
 return self;
 }

 5. 继承关系：这种关系很明了，不做阐述
 
 */


#endif
