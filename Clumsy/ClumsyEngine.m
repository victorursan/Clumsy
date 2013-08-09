//
//  ClumsyEngine.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyEngine.h"

@interface ClumsyEngine ()

@property(strong, nonatomic) NSTimer *actionTimer;

@end

@implementation ClumsyEngine

- (id)init {
  self = [super init];
  if (self) {
    [self startEngine];
  }
  return self;
}

- (void)startEngine {
  NSLog(@"enginge started");
  [self startTimer];
}

- (void)screenWasPreesed {
  NSLog(@"screen was pressed");
  [self resetTimer];
}

- (void)screenWasSwiped:(UISwipeGestureRecognizerDirection)direction {
  NSLog(@"screen was swiped in the direction of: %u", direction);
  [self resetTimer];
}

- (void)iPhoneWasShaken {
  NSLog(@"iPhone was shaken");
  [self resetTimer];
}


- (void)startTimer {
  self.actionTimer = [NSTimer scheduledTimerWithTimeInterval:1.5
                                                      target:self
                                                    selector:@selector(failedAction)
                                                    userInfo:nil
                                                     repeats:NO];
}

- (void)resetTimer {
  [self.actionTimer invalidate];
  self.actionTimer = nil;
  [self startTimer];
}

- (void)failedAction {
  [self.actionTimer invalidate];
  self.actionTimer = nil;
  NSLog(@"failed");
}

@end
