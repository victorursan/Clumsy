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
#import "ClumsySocialButton.h"
#import "ClumsySocialHandler.h"
#import "ClumsyHighScoreLabel.h"
#import "ClumsyHeader.h"
#import "ClumsyScoreLabelView.h"
#import "ClumsyNewHighScoreView.h"


@interface ClumsyScoreView ()

@property(strong, nonatomic) NSNumber *playersScore;

@end

@implementation ClumsyScoreView

- (id)initWithFrame:(CGRect)frame delegate:(id)delegate score:(NSNumber *)score andHighScore:(HighScore *)highScore {
  self = [super initWithFrame:frame];
  if (self) {
    self.delegate = delegate;
    self.highScore = highScore;
    self.playersScore = score;
    
    BOOL isNew = TRUE;
    if (score.integerValue <= [[[self.highScore scoreValue] highScore] integerValue]) {
      isNew = FALSE;
    }
    [self.highScore setHighScore:[self.playersScore integerValue]];
    
    [self addSubview:[ClumsyScoreInnerBoxView viewWithFrame:CGRectMake(self.center.x-160, self.center.y-125, 320, 250)]];
    [self addSubview:[ClumsySocialButton buttonForScoreViewWithTwitterPoint:CGPointMake(self.center.x - 140, self.center.y + 45) andDelegate:self]];
    [self addSubview:[ClumsySocialButton buttonForScoreViewWithFacebookPoint:CGPointMake(self.center.x - 85, self.center.y + 45) andDelegate:self]];
    [self addSubview:[ClumsyHeader titleWithFrame:CGRectMake(self.center.x-150, self.center.y-200, 300, 85)]];
    [self addSubview:[ClumsyScoreLabelView labelViewWithFrame:CGRectMake(self.center.x -130, self.center.y-85, 255, 60) andScore:score]];
    [self addSubview:[ClumsyNewHighScoreView highscoreWithFrame:CGRectMake(self.center.x-150, self.center.y-35, 300, 80) new:isNew]];
    [self addSubview:[ClumsyScoreOkButton buttonWithPoint:CGPointMake(self.center.x+29, self.center.y+45) andDelegate:self]];
  }
  return self;
}

- (void)socialButtonPressed:(UIButton *)sender {
  [self.delegate presentSocialViewController:[ClumsySocialHandler viewControllerForButton:sender andScore:self.playersScore]];
}

+ (id)viewWithFrame:(CGRect)frame delegate:(id)delegate score:(NSNumber *)score andHighScore:(HighScore *)highScore {
  return [[ClumsyScoreView alloc] initWithFrame:frame delegate:delegate score:score andHighScore:highScore];
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
