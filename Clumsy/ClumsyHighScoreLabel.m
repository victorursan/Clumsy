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

- (id)initWithPoint:(CGPoint)point andScore:(Score *)score {
    self = [super initWithFrame:CGRectMake(point.x, point.y, 150, 22)];
    if (self) {
      self.score = [score.highScore integerValue];
      self.textColor = [UIColor whiteColor];
    }
    return self;
}

+ (id)labelWithPoint:(CGPoint)point andScore:(Score *)score {
  return [[ClumsyHighScoreLabel alloc] initWithPoint:point andScore:score];
}

- (void)setScore:(NSInteger)score {
  self.text = [NSString stringWithFormat:@"High score:%d",score];
  [self sizeToFit];
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
