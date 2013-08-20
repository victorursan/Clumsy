//
//  ClumsySocialButton.m
//  Clumsy
//
//  Created by Victor Ursan on 8/19/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsySocialButton.h"

@implementation ClumsySocialButton

- (id)initWithPoint:(CGPoint)point delegate:(id)delegate title:(NSString *)title {
  self = [super initWithFrame:CGRectMake(point.x, point.y, 30, 30)];
  if (self) {
    self.delegate = delegate;
    self.backgroundColor = [UIColor lightGrayColor];
    [self setTitle:title forState:UIControlStateNormal];
    if ([title isEqualToString:@"t"]) {
      self.tag = 1;
    } else if ([title isEqualToString:@"f"]) {
      self.tag = 2;
    }
    [self addTarget:self.delegate action:@selector(socialButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

+ (id)buttonWithTwitterPoint:(CGPoint)point andDelegate:(id)delegate {
  ClumsySocialButton *twitterSheet = [[ClumsySocialButton alloc] initWithPoint:point delegate:delegate title:@"t"];
  return twitterSheet;
}

+ (id)buttonWithFacebookPoint:(CGPoint)point andDelegate:(id)delegate {
  ClumsySocialButton *facebookSheet = [[ClumsySocialButton alloc] initWithPoint:point delegate:delegate title:@"f"];
  return facebookSheet;
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
