//
//  ClumsySocialButton.h
//  Clumsy
//
//  Created by Victor Ursan on 8/19/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClumsySocialButtonDelegate.h"

@interface ClumsySocialButton : UIButton

@property(strong, nonatomic) id<ClumsySocialButtonDelegate>delegate;

+ (id)buttonWithTwitterPoint:(CGPoint)point andDelegate:(id)delegate;
+ (id)buttonWithFacebookPoint:(CGPoint)point andDelegate:(id)delegate;
+ (id)buttonForScoreViewWithTwitterPoint:(CGPoint)point andDelegate:(id)delegate;
+ (id)buttonForScoreViewWithFacebookPoint:(CGPoint)point andDelegate:(id)delegate;
@end
