//
//  Son.h
//  DesignPattern_BasicKnowledge
//
//  Created by ZhangYu on 14-2-20.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Father;

@interface Son : NSObject

@property(nonatomic,copy)NSString* name;
@property(nonatomic,weak)Father* father;

@end
