//
//  NimoEngine.h
//  Visitor
//
//  Created by zhangdong on 15/8/26.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NimoComponentVisitor.h"
@interface NimoEngine : NSObject

@property (nonatomic, copy) NSString *modelName;
- (id)initWithModelName:(NSString *)modelName;
- (void)acceptComponentVisitor:(id<NimoComponentVisitor>)visitor;
@end
