//
//  OperationFactory.m
//  DesignPattern_SimpleFactoryPattern
//
//  Created by ZhangYu on 14-2-20.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "OperationFactory.h"
#import "OperationManager.h"

@implementation OperationFactory

+(Operation*)createOperate:(NSString*)operateStr
{

//    Operation* oper = nil;
//    if ([operateStr isEqualToString:@"+"]) {
//        oper = [[OperationAdd alloc] init];
//    }else if ([operateStr isEqualToString:@"-"]){
//        oper = [[OperationSub alloc] init];
//    }else if ([operateStr isEqualToString:@"*"]){
//        oper = [[OperationMultiply alloc] init];
//    }else if ([operateStr isEqualToString:@"/"]){
//        oper = [[OperationDivide alloc] init];
//    }
//    return oper;
    
    
    /**
     *
     *
     *
     */
    
    [[[OperationManager getInstance] dictOperation] setObject:NSStringFromClass([OperationAdd class]) forKey:@"+"];
    
    [[[OperationManager getInstance] dictOperation] setObject:NSStringFromClass([OperationSub class]) forKey:@"-"];
    
    [[[OperationManager getInstance] dictOperation] setObject:NSStringFromClass([OperationMultiply class]) forKey:@"*"];
    
    [[[OperationManager getInstance] dictOperation] setObject:NSStringFromClass([OperationDivide class]) forKey:@"/"];
    
    NSString *className = [[[OperationManager getInstance] dictOperation] objectForKey:operateStr];
    Operation *oper = [[NSClassFromString(className) alloc] init];
    

    
    return oper;
    

}

@end
