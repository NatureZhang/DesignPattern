//
//  NimoCar.h
//  Visitor
//
//  Created by zhangdong on 15/8/26.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NimoComponentVisitor.h"

@class NimoEngine, NimoWheel;

@interface NimoCar : NSObject

@property (nonatomic) NimoEngine *engine;
@property (nonatomic, readonly) NSArray *arrayOfWheels;

- (void)addWheel:(NimoWheel *)wheel atIndex:(NSUInteger)index;
- (void)acceptComponentVisitor:(id<NimoComponentVisitor>)visitor;
@end
