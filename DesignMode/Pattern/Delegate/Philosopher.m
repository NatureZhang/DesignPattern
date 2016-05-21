//
//  Philosopher.m
//  DesignPattern_DelegateProtocolPattern
//
//  Created by ZhangYu on 14-2-25.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "Philosopher.h"

@implementation Philosopher

@synthesize delegate;
- (void)dealloc
{
    NSLog(@"Philosopher 销毁");
}
- (instancetype)initWithDelegateClassName:(NSString *)delegateName
{
    self = [super init];
    if (self) {
        self.delegate = [[NSClassFromString(delegateName) alloc] init];
    }
    return self;
}

-(void)start
{
    count = 0;
    //定时器请求handle方法
    timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(handle) userInfo:nil repeats:YES];
}

-(void)handle
{
    switch (count) {
        case 0:
            //调用委托对象方法
            [self.delegate sleep];
            count++;
            break;
        case 1:
            [self.delegate eat];
            count++;
            break;
        case 2:
            [self.delegate work];
            count++;
            break;
        case 3:
            count = 0;
            break;
    }
}

@end
