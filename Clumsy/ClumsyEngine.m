//
//  ClumsyEngine.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyEngine.h"
#import "ClumsyActionObject.h"

@interface ClumsyEngine ()

@property(strong, nonatomic) NSTimer *actionTimer;
@property(strong, nonatomic) ClumsyActionObject *clumsyObject;
@property(nonatomic) double gameTime;

@end

@implementation ClumsyEngine {
  int score;
}

- (id)initWithTarget:(id)delegate {
  self = [super init];
  if (self) {
    self.gameTime = 1.20f;
    self.delegate = delegate;
    [self setNewClumsyObject];
    [self startTimer];
    score = 0;
  }
  return self;
}

+ (id)startEngineWithTarget:(id)delegate {
  return [[ClumsyEngine alloc] initWithTarget:delegate];
}

- (void)verifyClumsyActionTaken:(ClumsyActionObject *)clumsyObject {
  NSLog(@"%@ -- %@",clumsyObject.text , self.clumsyObject.text);
  if ([clumsyObject.text isEqual:self.clumsyObject.text]) {
    [self resetTimer];
    [self setNewClumsyObject];
    score ++;
  } else {
    [self failedAction];
  }
}

- (void)setNewClumsyObject {
  self.clumsyObject = [ClumsyActionObject randomClumsyObject];
  [self.delegate setClumsyMainLabelTextTo:self.clumsyObject];
}

- (void)startTimer {
  double time = self.gameTime;
  if ([self.clumsyObject.text isEqualToString:@"Shake"]) {
    time = 1.20f;
  }
  self.gameTime = self.gameTime - 0.005f;
  NSLog(@"Timeinterval: %f for action: %@",time ,self.clumsyObject.text);
  self.actionTimer = [NSTimer scheduledTimerWithTimeInterval:time
                                                      target:self
                                                    selector:@selector(failedAction)
                                                    userInfo:nil
                                                     repeats:NO];
}

- (void)stopTimer {
  [self.actionTimer invalidate];
  self.actionTimer = nil;
}
- (void)resetTimer {
  [self stopTimer];
  [NSThread sleepForTimeInterval:0.15f];
  [self startTimer];
}

- (void)failedAction {
  [self stopTimer];
  [self.delegate failedClumsyActionWithScore:[NSNumber numberWithInt:score] atAction:[self.clumsyObject text]];
}

@end
