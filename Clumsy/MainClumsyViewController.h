//
//  MainClumsyViewController.h
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <Social/Social.h>
#import <CoreMotion/CoreMotion.h>
#import "CustomMainUIButtonDelegate.h"
#import "CustomUISwipeGestureDelegate.h"
#import "ClumsyEngineDelegate.h"
#import "ClumsyScoreViewDelegate.h"
#import "ClumsySocialButtonDelegate.h"
#import "HighScore.h"

@interface MainClumsyViewController : UIViewController <ClumsySocialButtonDelegate, ClumsyScoreViewDelegate, ClumsyEngineDelegate, CustomMainUIButtonDelegate, CustomUISwipeGestureDelegate, UIGestureRecognizerDelegate>

@property(strong, nonatomic) HighScore *highScore;

@end
