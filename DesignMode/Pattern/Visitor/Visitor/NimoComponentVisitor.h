//
//  NimoComponentVisitor.h
//  Visitor
//
//  Created by zhangdong on 15/8/26.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

@class NimoWheel, NimoEngine;
@protocol NimoComponentVisitor <NSObject>

- (void)visitEngine:(NimoEngine *)engine;
- (void)visitWheel:(NimoWheel *)wheel;

@end
