//
//  ClumsyScoreView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreView.h"
#import "ClumsyScoreOkButton.h"
#import "ClumsyScoreInnerBoxView.h"
#import "ClumsyScoreLable.h"
#import "ClumsySocialButton.h"
#import "ClumsySocialHandler.h"
#import "ClumsyHighScoreLabel.h"

@interface ClumsyScoreView ()

@property(strong, nonatomic) NSNumber *playersScore;

@end

@implementation ClumsyScoreView

- (id)initWithFrame:(CGRect)frame delegate:(id)delegate score:(NSNumber *)score action:(NSString *)action andHighScore:(HighScore *)highScore {
  self = [super initWithFrame:frame];
  if (self) {
    self.delegate = delegate;
    self.highScore = highScore;
    self.playersScore = score;
    
    
   // self.backgroundColor = [UIColor colorWithRed: 0.286 green: 0.286 blue: 0.286 alpha: 0.35];
    [self.highScore setHighScore:[self.playersScore integerValue]];

    [self addSubview:[ClumsyScoreInnerBoxView viewWithFrame:CGRectMake(self.center.x-140, self.center.y-70, 280, 140)]];
    [self addSubview:[ClumsyScoreLable lableWithFrame:CGRectMake(self.center.x-140, self.center.y-70, 280, 90)
                                             andScore:self.playersScore
                                            andAction:[self transformeAction:action]]];
    [self addSubview:[ClumsySocialButton buttonForScoreViewWithTwitterPoint:CGPointMake(self.center.x - 140, self.center.y + 60) andDelegate:self]];
    [self addSubview:[ClumsySocialButton buttonForScoreViewWithFacebookPoint:CGPointMake(self.center.x - 90, self.center.y + 60) andDelegate:self]];
    [self addSubview:[ClumsyScoreOkButton buttonWithPoint:CGPointMake(self.center.x+15, self.center.y+22) andDelegate:self]];
    [self addSubview:[ClumsyHighScoreLabel labelForScoreViewWithFrame:CGRectMake(self.center.x-130, self.center.y + 25, 160, 22) andScore:[self.highScore scoreValue]]];
  }
  return self;
}

- (NSString *)transformeAction:(NSString *)action {
  NSDictionary *transformer = @{@"Swipe Right":@"swipe",
                                @"Swipe Left":@"swipe",
                                @"Swipe Up":@"swipe",
                                @"Swipe Down":@"swipe",
                                @"Tap":@"tap",
                                @"Double Tap":@"tap",
                                @"Shake":@"shake"};
  return transformer[action];
}

- (void)socialButtonPressed:(UIButton *)sender {
  [self.delegate presentSocialViewController:[ClumsySocialHandler viewControllerForButton:sender andScore:self.playersScore]];
}

+ (id)viewWithFrame:(CGRect)frame delegate:(id)delegate score:(NSNumber *)score action:(NSString *)action andHighScore:(HighScore *)highScore {
  return [[ClumsyScoreView alloc] initWithFrame:frame delegate:delegate score:score action:action andHighScore:highScore];
}

- (void)okButtonPressed:(id)sender {
  [self.delegate showSocialButtons];
  [self.delegate startScreen];
  [self removeFromSuperview];
}



/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
