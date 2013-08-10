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

@end

@implementation ClumsyEngine

- (id)initWithTarget:(id)delegate {
  self = [super init];
  if (self) {
    self.delegate = delegate;
    [self setNewClumsyObject];
  }
  return self;
}

+ (id)startEngineWithTarget:(id)delegate {
  return [[ClumsyEngine alloc] initWithTarget:delegate];
}

- (void)actionWithClumsyObject:(ClumsyActionObject *)clumsyObject {
  NSLog(@"%@",clumsyObject.text);
  [self setNewClumsyObject];
}

- (void)setNewClumsyObject {
  self.clumsyObject = [ClumsyActionObject randomClumsyObject];
  NSLog(@"%@",self.clumsyObject.text);
  [self.delegate setClumsyMainLabelTextTo:self.clumsyObject];
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
  [self.delegate setClumsyMainLabelTextTo:[[ClumsyActionObject alloc] initWithAction:@"Start"]];
  NSLog(@"failed");
}

@end
