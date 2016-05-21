//
//  DecoratorViewController.m
//  Decorator
//
//  Created by zhangdong on 15/9/9.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "DecoratorViewController.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"
#import "DecoratorView.h"

@interface DecoratorViewController ()

@end

@implementation DecoratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 加载原始图像
    UIImage *image = [UIImage imageNamed:@"haomei"];
    
    // 创建一个变换
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI/4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width/8.0, image.size.height/24.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    
    // 真正子类的方式
    id<ImageComponent>transformedImage = [[ImageTransformFilter alloc] initWithImageComponent:image transform:finalTransform];
    id<ImageComponent>finalImage = [[ImageShadowFilter alloc] initWithImageComponent:transformedImage];
    
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:[self.view bounds]];
    [decoratorView setImage:(UIImage *)finalImage];
    decoratorView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:decoratorView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
