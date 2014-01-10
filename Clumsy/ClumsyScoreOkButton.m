//
//  ClumsyScoreOkButton.m
//  Clumsy
//
//  Created by Victor Ursan on 8/17/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreOkButton.h"

@implementation ClumsyScoreOkButton

- (id)initWithPoint:(CGPoint)point andDelegate:(id)delegate {
  self = [super initWithFrame:CGRectMake(point.x, point.y, 126, 45)];
  if (self) {
    self.delegate = delegate;
    //self.backgroundColor = [UIColor darkGrayColor];
    [self.titleLabel setFont:[UIFont fontWithName:@"arial" size:24]];
    [self setTitle:@"OK" forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor lightTextColor] forState:UIControlStateHighlighted];
    [self addTarget:self.delegate action:@selector(okButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

+ (id)buttonWithPoint:(CGPoint)point andDelegate:(id)delegate {
  return [[ClumsyScoreOkButton alloc] initWithPoint:point andDelegate:delegate];
}

 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 CALayer *rightBorder = [CALayer layer];
 rightBorder.borderColor = [UIColor darkGrayColor].CGColor;
 rightBorder.borderWidth = 1;
 rightBorder.frame = CGRectMake(-1, -1, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)+2);
 [self.layer addSublayer:rightBorder];
 // Drawing code
 }

@end
