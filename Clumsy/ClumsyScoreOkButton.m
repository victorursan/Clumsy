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
  self = [super initWithFrame:CGRectMake(point.x, point.y, 115, 30)];
  if (self) {
    self.delegate = delegate;
    self.backgroundColor = [UIColor darkGrayColor];
    [self.titleLabel setFont:[UIFont fontWithName:@"arial" size:18]];
    [self setTitle:@"OK" forState:UIControlStateNormal];
    [self addTarget:self.delegate action:@selector(okButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

+ (id)buttonWithPoint:(CGPoint)point andDelegate:(id)delegate {
  return [[ClumsyScoreOkButton alloc] initWithPoint:point andDelegate:delegate];
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
