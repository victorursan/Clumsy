//
//  ClumsyScoreOkButton.m
//  Clumsy
//
//  Created by Victor Ursan on 8/17/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreOkButton.h"

@implementation ClumsyScoreOkButton

- (id)initWithFrame:(CGRect)frame andDelegate:(id)delegate {
  self = [super initWithFrame:frame];
  if (self) {
    self.delegate = delegate;
    self.backgroundColor = [UIColor darkGrayColor];
    [self.titleLabel setFont:[UIFont fontWithName:@"arial" size:18]];
    [self setTitle:@"OK" forState:UIControlStateNormal];
    [self addTarget:self.delegate action:@selector(okButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

+ (id)buttonWithFrame:(CGRect)frame andDelegate:(id)delegate {
  return [[ClumsyScoreOkButton alloc] initWithFrame:frame andDelegate:delegate];
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
