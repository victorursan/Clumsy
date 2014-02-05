//
//  CustomUISlider.m
//  Clumsy
//
//  Created by Victor Ursan on 2/2/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import "CustomUISlider.h"

@implementation CustomUISlider

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    self.minimumValue = 0.0f;
    self.maximumValue = 1.0f;
    [self setTransform:CGAffineTransformMakeScale(1.2f, 5.0f)];
    [self setThumbImage:[[UIImage alloc] init] forState:UIControlStateNormal];
    self.minimumTrackTintColor = [UIColor greenColor];
    self.maximumTrackTintColor = [UIColor colorWithWhite:0.4f alpha:0.5f];
    self.continuous = NO;
    self.hidden = YES;
  }
  return self;
}

+ (id)sliderWithFrame:(CGRect)frame {
  return [[CustomUISlider alloc] initWithFrame:frame];
}

- (void)incrementSliderReset:(BOOL)reset {
  static int count = 0;
  count++;
  if (!reset) {
    [self setValue:(float)count/60.0f animated:NO];
  } else {
    count = 0;
  }
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
