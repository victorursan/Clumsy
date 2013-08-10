//
//  CustomUISwipeGesture.h
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomUISwipeGestureDelegate.h"

@interface CustomUISwipeGesture : UISwipeGestureRecognizer

@property(strong, nonatomic) id<CustomUISwipeGestureDelegate>delegate;

- (id)initWithTarget:(id)delegate andDirection:(UISwipeGestureRecognizerDirection)direction;
+ (id)swipeWithTarget:(id)delegate andDirection:(UISwipeGestureRecognizerDirection)direction;

@end
