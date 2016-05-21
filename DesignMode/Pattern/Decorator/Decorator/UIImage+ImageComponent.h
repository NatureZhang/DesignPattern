//
//  UIImage+ImageComponent.h
//  Decorator
//
//  Created by zhangdong on 15/9/9.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageComponent.h"

// 根据书上说: 因为协议中定义的方法UIImage已经都有了，所以不必在范畴中进行实现。
// 这个范畴只是告诉编译器，UIImage还是一种ImageComponent(这句话怎么理解？)
// 如何理解协议？难道协议也属于一种抽象数据类型？
@interface UIImage (ImageComponent)<ImageComponent>

@end
