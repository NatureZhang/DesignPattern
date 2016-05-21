//
//  Father.h
//  DesignPattern_BasicKnowledge
//
//  Created by ZhangYu on 14-2-20.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Son.h"

@interface Father : NSObject

@property(nonatomic,copy)NSString* name;
@property(nonatomic,retain)Son* son;

@end
