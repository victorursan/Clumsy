//
//  CustomUISwipeGesture.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "CustomUISwipeGesture.h"

@implementation CustomUISwipeGesture

- (id)initWithTarget:(id)delegate andDirection:(UISwipeGestureRecognizerDirection)direction {
  self = [super init];
  if (self) {
    self.delegate = delegate;
    self.numberOfTouchesRequired = 1;
    self.direction = direction;
    [self addTarget:self.delegate action:@selector(screenWasSwiped:)];
  }
  return self;
}

+ (id)swipeWithTarget:(id)delegate andDirection:(UISwipeGestureRecognizerDirection)direction {
  return [[CustomUISwipeGesture alloc] initWithTarget:delegate andDirection:direction];
}

@end
