//
//  NimoWheel.h
//  Visitor
//
//  Created by zhangdong on 15/8/26.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NimoComponentVisitor.h"

@interface NimoWheel : NSObject

@property (nonatomic, assign) float diameter; //车轮直径
- (void)acceptComponentVisitor:(id<NimoComponentVisitor>)visitor;

@end
