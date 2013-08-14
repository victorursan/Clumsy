//
//  ClumsyScore.m
//  Clumsy
//
//  Created by Victor Ursan on 8/14/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScore.h"

@implementation ClumsyScore

- (id)initWithName:(NSString *)playersName andScore:(NSNumber *)playersScore {
  self = [super init];
  if (self) {
    self.playersName = playersName;
    self.playersScore = playersScore;
  }
  return self;
}

+ (void)savePlayer:(NSString *)playersName withTheScore:(NSNumber *)playersScore {
  ClumsyScore *newScore = [[ClumsyScore alloc] initWithName:playersName andScore:playersScore];
  [newScore saveScore];
}

- (void)saveScore {
  NSLog(@"Player:%@ made the score:%@", self.playersName, self.playersScore);
}

@end
