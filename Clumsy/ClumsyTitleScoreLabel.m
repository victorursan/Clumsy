//
//  ClumsyTitleScoreLabel.m
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyTitleScoreLabel.h"

@implementation ClumsyTitleScoreLabel

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    self.text = @"You were Clumsy!";
    self.backgroundColor = [UIColor clearColor];
    self.textColor = [UIColor whiteColor];
    self.textAlignment = NSTextAlignmentCenter;
  }
  return self;
}

+ (id)labelWithFrame:(CGRect)frame {
  return [[ClumsyTitleScoreLabel alloc] initWithFrame:frame];
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
