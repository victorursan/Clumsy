//
//  ClumsyActionObject.m
//  Clumsy
//
//  Created by Victor Ursan on 8/10/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyActionObject.h"
#import "CustomUISwipeGesture.h"

@interface ClumsyActionObject ()

@property(strong, nonatomic) NSArray *allClumsyObjects;

@end

@implementation ClumsyActionObject

- (id)initWithAction:(NSString *)action {
  self = [super init];
  if (self) {
    self.text = action;
  }
  return self;
}

+ (id)screenWasSwipedInDirection:(UISwipeGestureRecognizer *)swipe {
  NSString *swipeToString = [NSString stringWithFormat:@"%lu",[swipe direction]];
  NSDictionary *swipeDirection = @{@"1":@"Swipe Right",
                                   @"2":@"Swipe Left",
                                   @"4":@"Swipe Up",
                                   @"8":@"Swipe Down"};
  return [[ClumsyActionObject alloc] initWithAction:swipeDirection[swipeToString]];
}

+ (id)screenWasTapped {
  return [[ClumsyActionObject alloc] initWithAction:@"Tap"];
}

+ (id)screenWasDoubleTapped {
  return [[ClumsyActionObject alloc] initWithAction:@"Double Tap"];
}

+ (id)iPhoneWasShaken {
  return [[ClumsyActionObject alloc] initWithAction:@"Shake"];
}

- (void)createAllClumsyObjects {
  self.allClumsyObjects = @[[ClumsyActionObject screenWasTapped],
                            [ClumsyActionObject screenWasDoubleTapped],
                            [ClumsyActionObject iPhoneWasShaken],
                            [ClumsyActionObject screenWasSwipedInDirection:[CustomUISwipeGesture swipeWithTarget:nil
                                                                                                    andDirection:UISwipeGestureRecognizerDirectionUp]],
                            [ClumsyActionObject screenWasSwipedInDirection:[CustomUISwipeGesture swipeWithTarget:nil
                                                                                                    andDirection:UISwipeGestureRecognizerDirectionRight]],
                            [ClumsyActionObject screenWasSwipedInDirection:[CustomUISwipeGesture swipeWithTarget:nil
                                                                                                    andDirection:UISwipeGestureRecognizerDirectionLeft]],
                            [ClumsyActionObject screenWasSwipedInDirection:[CustomUISwipeGesture swipeWithTarget:nil
                                                                                                    andDirection:UISwipeGestureRecognizerDirectionDown]]];
}

- (id)createRandomClumsyObject {
  [self createAllClumsyObjects];
  int count = [self.allClumsyObjects count];
  return self.allClumsyObjects[arc4random()%count];
}

+ (id)startClumsyObject {
  return [[ClumsyActionObject alloc] initWithAction:@"Start"];
}

+ (id)randomClumsyObject {
  return [[[ClumsyActionObject alloc] init] createRandomClumsyObject];
}

@end
