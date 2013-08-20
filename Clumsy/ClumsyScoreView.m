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
#import "ClumsySocialViewController.h"

@interface ClumsyScoreView ()

@property(strong, nonatomic) NSNumber *playersScore;

@end

@implementation ClumsyScoreView

- (id)initWithFrame:(CGRect)frame delegate:(id)delegate andScore:(NSNumber *)score {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [self addSubview:[ClumsyScoreInnerBoxView viewWithFrame:CGRectMake(25, 160, 270, 120)]];
    [self addSubview:[ClumsyTitleScoreLabel labelWithFrame:CGRectMake(25, 160, 270, 40)]];
    [self addSubview:[ClumsyScoreLable lableWithFrame:CGRectMake(25, 200, 270, 35) andScore:score]];
    [self addSubview:[ClumsySocialButton buttonWithTwitterPoint:CGPointMake(30, 250) andDelegate:self]];
    [self addSubview:[ClumsySocialButton buttonWithFacebookPoint:CGPointMake(65, 250) andDelegate:self]];
    [self addSubview:[ClumsyScoreOkButton buttonWithPoint:CGPointMake(180, 250) andDelegate:self]];
    self.playersScore = score;
    self.delegate = delegate;
  }
  return self;
}

- (void)socialButtonPressed:(UIButton *)sender {
  [self.delegate presentSocialViewController:[ClumsySocialViewController viewForButtonPressed:sender andScore:self.playersScore]];
}

+ (id)viewWithFrame:(CGRect)frame delegate:(id)delegate andScore:(NSNumber *)score {
  return [[ClumsyScoreView alloc] initWithFrame:frame delegate:delegate andScore:score];
}

- (void)okButtonPressed:(id)sender {
  [ClumsyScore saveScore:self.playersScore];
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
