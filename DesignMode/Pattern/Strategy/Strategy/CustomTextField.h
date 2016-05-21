//
//  CustomTextField.h
//  Strategy
//
//  Created by zhangdong on 15/9/17.
//  Copyright © 2015年 __Nature__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface CustomTextField : UITextField

@property (nonatomic, strong) IBOutlet InputValidator *inputValidator;
- (BOOL)validate;

@end
