//
//  ClumsyScoreView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreView.h"
#import "ClumsyScoreButton.h"
#import "ClumsyScoreInnerBoxView.h"
#import "ClumsyTitleScoreLabel.h"
#import "ClumsyScoreLable.h"

@implementation ClumsyScoreView

- (id)initWithFrame:(CGRect)frame andScore:(NSNumber *)score {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [self addSubview:[ClumsyScoreInnerBoxView viewWithFrame:CGRectMake(40, 160, 240, 140)]];
    [self addSubview:[ClumsyTitleScoreLabel labelWithFrame:CGRectMake(40, 160, 240, 40)]];
    [self addSubview:[ClumsyScoreLable lableWithFrame:CGRectMake(40, 200, 240, 35) andScore:score]];
    [self addSubview:[ClumsyScoreLable lableForNameWithFrame:CGRectMake(40, 235, 100, 35)]];
    [self addSubview:[ClumsyScoreButton  buttonWithFrame:CGRectMake(220, 270, 60, 30)
                                                   title:@"Save"
                                                  target:self
                                                  action:@selector(saveButtonPressed:)]];
    [self addSubview:[ClumsyScoreButton buttonWithFrame:CGRectMake(155, 270, 60, 30)
                                                  title:@"Cancel"
                                                 target:self
                                                 action:@selector(cancelButtonPressed:)]];
  }
  return self;
}

+ (id)viewWithFrame:(CGRect)frame andScore:(NSNumber *)score {
  return [[ClumsyScoreView alloc] initWithFrame:frame andScore:score];
}

- (void)saveButtonPressed:(UIButton *)sender {
  [self removeFromSuperview];
}

- (void)cancelButtonPressed:(UIButton *)sender {
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
