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

- (id)initWithFrame:(CGRect)frame delegate:(id)delegate score:(NSNumber *)score andAction:(NSString *)action {
  self = [super initWithFrame:frame];
  if (self) {
    self.delegate = delegate;
    self.playersScore = score;
    [self addSubview:[ClumsyScoreInnerBoxView viewWithFrame:self.bounds]];
    [self addSubview:[ClumsyScoreLable lableWithFrame:CGRectMake(20, self.frame.size.height/2-135/2, 280, 90)
                                             andScore:self.playersScore
                                            andAction:[self transformeAction:action]]];
    [self addSubview:[ClumsySocialButton buttonWithTwitterPoint:CGPointMake(20, self.bounds.size.height/2 + 60) andDelegate:self]];
    [self addSubview:[ClumsySocialButton buttonWithFacebookPoint:CGPointMake(70, self.bounds.size.height/2 + 60) andDelegate:self]];
    [self addSubview:[ClumsyScoreOkButton buttonWithPoint:CGPointMake(175, self.bounds.size.height/2 + 135/2 - 45) andDelegate:self]];
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

+ (id)viewWithFrame:(CGRect)frame delegate:(id)delegate score:(NSNumber *)score andAction:(NSString *)action {
  return [[ClumsyScoreView alloc] initWithFrame:frame delegate:delegate score:score andAction:action];
}

- (void)okButtonPressed:(id)sender {
  [self.delegate showSocialButtons];
  [self.delegate startScreen];
  [self removeFromSuperview];
}

- (void)setScore:(HighScore *)score {
  [self addSubview:[ClumsyHighScoreLabel labelForScoreViewWithFrame:CGRectMake(30, self.bounds.size.height/2 + 25, 160, 22) andScore:[score highScore]]];
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
