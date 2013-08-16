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

@interface ClumsyScoreView ()

@property(strong, nonatomic) NSNumber *playersScore;

@end

@implementation ClumsyScoreView

- (id)initWithFrame:(CGRect)frame andScore:(NSNumber *)score {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [self addSubview:[ClumsyScoreInnerBoxView viewWithFrame:CGRectMake(25, 160, 270, 120)]];
    [self addSubview:[ClumsyTitleScoreLabel labelWithFrame:CGRectMake(25, 160, 270, 40)]];
    [self addSubview:[ClumsyScoreLable lableWithFrame:CGRectMake(25, 200, 270, 35) andScore:score]];
    [self addSubview:[ClumsyScoreOkButton buttonWithFrame:CGRectMake(180, 250, 115, 30) andDelegate:self]];
    self.playersScore = score;
  }
  return self;
}

+ (id)viewWithFrame:(CGRect)frame andScore:(NSNumber *)score {
  return [[ClumsyScoreView alloc] initWithFrame:frame andScore:score];
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
