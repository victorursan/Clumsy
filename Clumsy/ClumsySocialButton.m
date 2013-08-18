//
//  ClumsySocialButton.m
//  Clumsy
//
//  Created by Victor Ursan on 8/19/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsySocialButton.h"

@implementation ClumsySocialButton

- (id)initWithTwitterFrame:(CGRect)frame andDelegate:(id)delegate {
  self = [super initWithFrame:frame];
  if (self) {
    self.delegate = delegate;
    self.backgroundColor = [UIColor lightGrayColor];
    [self setTitle:@"t" forState:UIControlStateNormal];
    self.tag = 1;
    [self addTarget:self.delegate action:@selector(socialButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

- (id)initWithFacebookFrame:(CGRect)frame andDelegate:(id)delegate {
  self = [super initWithFrame:frame];
  if (self) {
    self.delegate = delegate;
    self.backgroundColor = [UIColor blueColor];
    [self setTitle:@"f" forState:UIControlStateNormal];
    self.tag = 2;
    [self addTarget:self.delegate action:@selector(socialButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

+ (id)buttonWithTwitterFrame:(CGRect)frame andDelegate:(id)delegate {
  return [[ClumsySocialButton alloc] initWithTwitterFrame:frame andDelegate:delegate];
}

+ (id)buttonWithFacebookFrame:(CGRect)frame andDelegate:(id)delegate {
  return [[ClumsySocialButton alloc] initWithFacebookFrame:frame andDelegate:delegate];
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
