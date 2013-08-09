//
//  CustomUISwipeGestureDelegate.h
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CustomUISwipeGestureDelegate <NSObject>

- (void)screenWasSwiped:(UISwipeGestureRecognizer *)swipeGesture;

@end
