//
//  ClumsyScore.h
//  Clumsy
//
//  Created by Victor Ursan on 8/14/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClumsyScore : NSObject

@property(strong, nonatomic) NSString *playersName;
@property(strong, nonatomic) NSNumber *playersScore;

- (id)initWithName:(NSString *)playersName andScore:(NSNumber *)playersScore;
+ (void)savePlayer:(NSString *)playersName withTheScore:(NSNumber *)playersScore;

@end
