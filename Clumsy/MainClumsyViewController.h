//
//  MainClumsyViewController.h
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomMainUIButtonDelegate.h"
#import "CustomUISwipeGestureDelegate.h"

@interface MainClumsyViewController : UIViewController <CustomMainUIButtonDelegate, CustomUISwipeGestureDelegate, UIGestureRecognizerDelegate>

- (void)setClumsyMainLabelTextTo:(NSString *)text;

@end
