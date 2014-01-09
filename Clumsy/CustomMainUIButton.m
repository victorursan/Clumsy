//
//  CustomMainUIButton.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "CustomMainUIButton.h"

@implementation CustomMainUIButton

- (id)initWithFrame:(CGRect)frame andTarget:(id)delegate {
  self = [super initWithFrame:frame];
  if (self) {
    self.delegate = delegate;
    [self addTarget:self.delegate action:@selector(screenWasPressed:) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

+ (id)buttonWithFrame:(CGRect)frame andTarget:(id)delegate {
  return [[CustomMainUIButton alloc] initWithFrame:frame andTarget:delegate];
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
