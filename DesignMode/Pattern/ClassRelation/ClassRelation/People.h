//
//  People.h
//  DesignPattern_BasicKnowledge
//
//  Created by ZhangYu on 14-2-20.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Car.h"
#import "Body.h"

@interface People : NSObject

@property(nonatomic,retain)Car* car;
@property(nonatomic,retain)Body* body;

@end
