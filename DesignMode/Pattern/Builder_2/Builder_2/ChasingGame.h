//
//  ChasingGame.h
//  Builder_2
//
//  Created by zhangdong on 15/7/20.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StandardCharacterBuilder.h"
@interface ChasingGame : NSObject

- (Character *) createPlayer:(CharacterBuilder *)builder;
- (Character *) createEnemy:(CharacterBuilder *)builder;

@end
