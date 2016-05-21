//
//  ReubenSandwich.h
//  TemplateMethod
//
//  Created by zhangdong on 15/9/11.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "AnySandwich.h"

@interface ReubenSandwich : AnySandwich

- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;

// 鲁宾三明治的特有操作
- (void)cutRyeBread;//特有黑麦面包
- (void)addCornBeef;//腌牛肉
- (void)addSauerkraut;//德国酸菜
- (void)addThousandIslandDressing;//千岛酱
- (void)addSwissCheese;//瑞士奶酪

@end
