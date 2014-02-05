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
@property(strong, nonatomic) NSTimer *progressTimer;
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
  self.actionTimer = [NSTimer scheduledTimerWithTimeInterval:time
                                                      target:self
                                                    selector:@selector(failedAction)
                                                    userInfo:nil
                                                     repeats:NO];
  self.progressTimer = [NSTimer scheduledTimerWithTimeInterval:time/60.0f
                                                        target:self
                                                      selector:@selector(increment)
                                                      userInfo:nil
                                                       repeats:YES];
}

- (void)increment {
  [self.delegate incrementProgressViewReset:NO];
}

- (void)stopTimer {
  [self.actionTimer invalidate];
  self.actionTimer = nil;
  [self.progressTimer invalidate];
  self.progressTimer = nil;
  [self.delegate incrementProgressViewReset:YES];
}
- (void)resetTimer {
  [self stopTimer];
  [NSThread sleepForTimeInterval:0.15f];
  [self startTimer];
}

- (void)failedAction {
  [self stopTimer];
  [self.delegate failedClumsyActionWithScore:[NSNumber numberWithInt:score]];
}

@end
