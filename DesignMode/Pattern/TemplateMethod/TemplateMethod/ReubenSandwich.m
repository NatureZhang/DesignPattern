//
//  ReubenSandwich.m
//  TemplateMethod
//
//  Created by zhangdong on 15/9/11.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "ReubenSandwich.h"

@implementation ReubenSandwich

- (void)prepareBread
{
    [self cutRyeBread];
}

- (void)addMeat
{
    [self addCornBeef];
}

- (void)addCondiments
{
    [self addSauerkraut];
    [self addThousandIslandDressing];
    [self addSwissCheese];
}

#pragma mark - 鲁宾三明治特有方法
- (void)cutRyeBread
{
    // 黑麦面包
    NSLog(@"切两片黑麦面包");
}

- (void)addCornBeef
{
    // 腌牛肉
    NSLog(@"加上腌牛肉");
}

- (void)addSauerkraut
{
    // 德国酸菜
    NSLog(@"添点德国酸菜");
    
}

- (void)addThousandIslandDressing
{
    // 千岛酱
    NSLog(@"加点千岛酱");
}

- (void)addSwissCheese
{
    // 上等瑞士奶酪
    NSLog(@"撒点瑞士奶酪");
}

- (void)extraStep
{
    NSLog(@"哈哈，我加了点糖");
}
@end
