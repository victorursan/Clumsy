//
//  ClumsyScore.m
//  Clumsy
//
//  Created by Victor Ursan on 8/14/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScore.h"

@implementation ClumsyScore

- (id)initWithScore:(NSNumber *)playersScore {
  self = [super init];
  if (self) {
    self.playersScore = playersScore;
  }
  return self;
}

+ (void)saveScore:(NSNumber *)playersScore {
  ClumsyScore *newScore = [[ClumsyScore alloc] initWithScore:playersScore];
  [newScore saveScore];
}

- (void)saveScore {
  NSLog(@"score:%@", self.playersScore);
}

@end
