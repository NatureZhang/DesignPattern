//
//  People.m
//  DesignPattern_BasicKnowledge
//
//  Created by ZhangYu on 14-2-20.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "People.h"

@implementation People


/*依赖
//Book作为read方法的形参
-(void)read:(Book*) book{
    NSLog(@"读的书是:%@",book.name);
}
*/

/**聚合
@synthesize car;
-(void)setCar:(Car *)inputCar
{
    self.car = inputCar;
}

-(void)drivingCar
{
    NSLog(@"车的型号是%@",car.type);
}
*/

//组合
@synthesize body;
-(People*)init
{
    self = [super init];
    if (self!=nil) {
        body = [[Body alloc] init];
    }
    return self;
}
-(void)eat
{
    NSLog(@"吃饭用身体：%@",body.name);
}


@end

