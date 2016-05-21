//
//  StrategyViewController.m
//  Strategy
//
//  Created by zhangdong on 15/9/16.
//  Copyright © 2015年 __Nature__. All rights reserved.
//

#import "StrategyViewController.h"
#import "CustomTextField.h"
#import "NumericInputValidator.h"
#import "AlphaInputValidator.h"
@interface StrategyViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet CustomTextField *alphaTextField;
@property (weak, nonatomic) IBOutlet CustomTextField *numericTextField;

@end

@implementation StrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 能直接在Xib中关联吗
    NumericInputValidator *numValidator = [[NumericInputValidator alloc] init];
    self.numericTextField.inputValidator = numValidator;
    
    AlphaInputValidator *alphaValidator = [[AlphaInputValidator alloc] init];
    self.alphaTextField.inputValidator = alphaValidator;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([textField isKindOfClass:[CustomTextField class]])
    {
        [(CustomTextField *)textField validate];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
