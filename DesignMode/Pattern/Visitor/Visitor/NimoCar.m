//
//  NimoCar.m
//  Visitor
//
//  Created by zhangdong on 15/8/26.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "NimoCar.h"
#import "NimoEngine.h"
#import "NimoWheel.h"

@interface NimoCar ()

@property (nonatomic, readwrite) NSMutableArray *mutableArrayOfWheel;

@end
@implementation NimoCar
- (instancetype)init
{
    self = [super init];
    if (self) {
        _mutableArrayOfWheel = [[NSMutableArray alloc] initWithCapacity:4];
    }
    return self;
}
- (void)addWheel:(NimoWheel *)wheel atIndex:(NSUInteger)index
{
    [_mutableArrayOfWheel insertObject:wheel atIndex:index];
}

- (NSArray *)arrayOfWheels
{
    return [_mutableArrayOfWheel copy];
}

- (NSString *)description
{
    NSDictionary *dic = [NSDictionary dictionaryWithObject:@[_engine, self.arrayOfWheels] forKey:@[@"Engine", @"Wheels"]];
    return [NSString stringWithFormat:@"My Car：%@", dic];
}

- (void)acceptComponentVisitor:(id<NimoComponentVisitor>)visitor
{
    [_engine acceptComponentVisitor:visitor];
    for (NimoWheel *wheel in self.arrayOfWheels) {
        [wheel acceptComponentVisitor:visitor];
    }
}
@end
