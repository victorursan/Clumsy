//
//  ClumsyScoreViewDelegate.h
//  Clumsy
//
//  Created by Victor Ursan on 8/17/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ClumsyScoreViewDelegate <NSObject>

- (void)presentSocialViewController:(UIViewController *)socialViewController;
- (void)showSocialButtons;
- (void)startScreen;

@end
