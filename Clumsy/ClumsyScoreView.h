//
//  ClumsyScoreView.h
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "ClumsyScoreOkButtonDelegate.h"
#import "ClumsyScoreViewDelegate.h"
#import "ClumsySocialButtonDelegate.h"

@interface ClumsyScoreView : UIView <ClumsyScoreOkButtonDelegate, ClumsySocialButtonDelegate>

@property(strong, nonatomic) id<ClumsyScoreViewDelegate>delegate;

- (id)initWithFrame:(CGRect)frame delegate:(id)delegate andScore:(NSNumber *)score;
+ (id)viewWithFrame:(CGRect)frame delegate:(id)delegate andScore:(NSNumber *)score;

@end
