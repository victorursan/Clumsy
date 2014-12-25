//
//  ClumsyHighScoreLabel.m
//  Clumsy
//
//  Created by Victor Ursan on 1/9/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import "ClumsyHighScoreLabel.h"
#import "Score.h"

@implementation ClumsyHighScoreLabel

- (id)initWithFrame:(CGRect)frame andScore:(Score *)score {
  self = [super initWithFrame:frame];
  if (self) {
    self.score = [score.highScore integerValue];
    self.text = [NSString stringWithFormat:@"HIGHSCORE: %ld",(long)self.score];
  }
  return self;
}

- (void)setScore:(NSInteger)score {
  _score = score;
  self.text = [NSString stringWithFormat:@"HIGHSCORE: %ld",(long)self.score];
  [self sizeToFit];
}

+ (id)labelForMainViewWithFrame:(CGRect)frame andScore:(Score *)score {
  ClumsyHighScoreLabel *scoreLabel = [[ClumsyHighScoreLabel alloc] initWithFrame:frame andScore:score];
  scoreLabel.textColor = [UIColor whiteColor];
  scoreLabel.textAlignment = NSTextAlignmentLeft;
  [scoreLabel sizeToFit];
  return scoreLabel;
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
