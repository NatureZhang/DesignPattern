//
//  ConcreteSubject.m
//  DesignPattern_ObserverPattern
//
//  Created by ZhangYu on 14-2-26.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "ConcreteSubject.h"
#import "Subject.h"
#import "Observer.h"

@implementation ConcreteSubject

@synthesize observers;

static ConcreteSubject* shareConcreteSubject = nil;

+(ConcreteSubject*)shareConcreteSubject
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        shareConcreteSubject = [[self alloc] init];
        shareConcreteSubject.observers = [[NSMutableArray alloc] init];
    });
    return shareConcreteSubject;
}

-(void)attach:(Observer *)observer
{
    [self.observers addObject:observer];
}

-(void)detach:(Observer *)observer
{
    [self.observers removeObject:observer];
}

-(void)notifyObservers
{
    for (id obs in self.observers) {
        [obs update];
    }
}

@end
