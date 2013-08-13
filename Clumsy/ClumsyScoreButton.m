//
//  ClumsyScoreButton.m
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreButton.h"

@implementation ClumsyScoreButton

- (id)initWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action {
    self = [super initWithFrame:frame];
    if (self) {
      self.backgroundColor = [UIColor darkGrayColor];
      [self.titleLabel setFont:[UIFont fontWithName:@"arial" size:18]];
      [self setTitle:title forState:UIControlStateNormal];
      [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

+ (id)buttonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action {
  return [[ClumsyScoreButton alloc] initWithFrame:frame title:title target:target action:action];
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
