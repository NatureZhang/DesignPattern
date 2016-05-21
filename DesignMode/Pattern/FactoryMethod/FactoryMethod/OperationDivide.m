//
//  OperationDivide.m
//  DesignPattern_SimpleFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "OperationDivide.h"
#import <UIKit/UIKit.h>
@implementation OperationDivide

-(double)getResult
{
    double result = 0;
    if (self.secondNum==0) {
        NSLog(@"除数不能为0");
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"除数不能为0" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:nil];
        [alertView show];
    }else
        result = self.firstNum/self.secondNum;
    return result;
}

@end
