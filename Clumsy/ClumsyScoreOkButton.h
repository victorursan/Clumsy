//
//  ClumsyScoreOkButton.h
//  Clumsy
//
//  Created by Victor Ursan on 8/17/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClumsyScoreOkButtonDelegate.h"

@interface ClumsyScoreOkButton : UIButton

@property(strong, nonatomic) id<ClumsyScoreOkButtonDelegate>delegate;

- (id)initWithFrame:(CGRect)frame andDelegate:(id)delegate;
+ (id)buttonWithFrame:(CGRect)frame andDelegate:(id)delegate;

@end
