//
//  ClumsyEngine.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyEngine.h"

@implementation ClumsyEngine

- (id)init {
  self = [super init];
  if (self) {
    
  }
  return self;
}

+ (void)startEngine {
  NSLog(@"engine is starting");
}

+ (void)screenWasPreesed {
  NSLog(@"screen was pressed");
}

+ (void)screenWasSwiped:(UISwipeGestureRecognizerDirection)direction {
  NSLog(@"screen was swiped in the direction of: %u", direction);
}

+ (void)iPhoneWasShaken {
  NSLog(@"iPhone was shaken");
}



@end
