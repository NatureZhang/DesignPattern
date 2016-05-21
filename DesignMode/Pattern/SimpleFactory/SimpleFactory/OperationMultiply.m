//
//  OperationMultiply.m
//  DesignPattern_SimpleFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "OperationMultiply.h"

@implementation OperationMultiply

-(double)getResult
{
    double result = 0;
    result = self.firstNum*self.secondNum;
    return result;
}

@end
