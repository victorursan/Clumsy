//
//  ClumsyScore.h
//  Clumsy
//
//  Created by Victor Ursan on 8/14/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClumsyScore : NSObject

@property(strong, nonatomic) NSNumber *playersScore;

- (id)initWithScore:(NSNumber *)playersScore;
+ (void)saveScore:(NSNumber *)playersScore;

@end
