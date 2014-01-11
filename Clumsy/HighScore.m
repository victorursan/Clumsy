//
//  HighScore.m
//  Clumsy
//
//  Created by Victor Ursan on 1/8/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import "HighScore.h"

@implementation HighScore

- (id)initWithContext:(NSManagedObjectContext *)context {
  self = [super init];
  if (self) {
    NSError *error;
    self.context = context;
    self.fetcher = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Score" inManagedObjectContext:self.context];
    [self.fetcher setEntity:entity];
    NSArray *fetched = [self.context executeFetchRequest:self.fetcher error:&error];
    self.score = [self setScoreFromArray:fetched];
  }
  return self;
}

- (void)setHighScore:(NSInteger)score {
  NSError *error;
  if (self.score.highScore.integerValue < score) {
    [self deleteScore:self.score];
    if (![self.context save:&error])
      NSLog(@"Problem saving: %@", [error localizedDescription]);
    Score *highScore = [NSEntityDescription insertNewObjectForEntityForName:@"Score" inManagedObjectContext:self.context];
    highScore.highScore = [NSNumber numberWithInteger:score];
    if (![self.context save:&error])
      NSLog(@"Problem saving: %@", [error localizedDescription]);
    self.score = highScore;
  }
}

- (Score *)setScoreFromArray:(NSArray *)fetched {
  Score *score;
  if ([fetched count]==0) {
    NSError *error;
    score = [NSEntityDescription insertNewObjectForEntityForName:@"Score" inManagedObjectContext:self.context];
    score.highScore = [NSNumber numberWithInteger:0];
    if (![self.context save:&error])
      NSLog(@"Problem saving: %@", [error localizedDescription]);
  } else if(([fetched count]==1)){
    score = fetched[0];
  } else {
    score = fetched[0];
    for (Score *toDelete in fetched) {
      if (![[toDelete objectID] isEqual:[score objectID]]){
        [self deleteScore:toDelete];
      }
    }
  }
  return score;
}

- (Score *)highScore {
  return self.score;
}

- (void)deleteScore:(Score *)score {
  NSError *error;
  [self.context deleteObject:score];
  if (![self.context save:&error])
    NSLog(@"Problem saving: %@", [error localizedDescription]);
}

@end
