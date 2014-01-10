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
#import "ClumsyTitleScoreLabel.h"
#import "ClumsyScoreLable.h"
#import "ClumsyScore.h"
#import "ClumsySocialButton.h"
#import "ClumsySocialHandler.h"
#import "ClumsyHighScoreLabel.h"

@interface ClumsyScoreView ()

@property(strong, nonatomic) NSNumber *playersScore;

@end

@implementation ClumsyScoreView

- (id)initWithFrame:(CGRect)frame delegate:(id)delegate andScore:(NSNumber *)score {
  self = [super initWithFrame:frame];
  if (self) {
    self.delegate = delegate;
    self.playersScore = score;
    [self addSubview:[ClumsyScoreInnerBoxView viewWithFrame:self.bounds]];
    [self addSubview:[ClumsyTitleScoreLabel labelWithFrame:CGRectMake(25, self.bounds.size.height/2 + 135/2 - 130 , 270, 40)]];
    [self addSubview:[ClumsyScoreLable lableWithFrame:CGRectMake(25, self.bounds.size.height/2 + 135/2 - 90, 270, 35) andScore:self.playersScore]];
    [self addSubview:[ClumsySocialButton buttonWithTwitterPoint:CGPointMake(20, self.bounds.size.height/2 + 60) andDelegate:self]];
    [self addSubview:[ClumsySocialButton buttonWithFacebookPoint:CGPointMake(70, self.bounds.size.height/2 + 60) andDelegate:self]];
    [self addSubview:[ClumsyScoreOkButton buttonWithPoint:CGPointMake(175, self.bounds.size.height/2 + 135/2 - 45) andDelegate:self]];
  }
  return self;
}

- (void)socialButtonPressed:(UIButton *)sender {
  [self.delegate presentSocialViewController:[ClumsySocialHandler viewControllerForButton:sender andScore:self.playersScore]];
}

+ (id)viewWithFrame:(CGRect)frame delegate:(id)delegate andScore:(NSNumber *)score {
  return [[ClumsyScoreView alloc] initWithFrame:frame delegate:delegate andScore:score];
}

- (void)okButtonPressed:(id)sender {
  [self.delegate showSocialButtons];
  [ClumsyScore saveScore:self.playersScore];
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
