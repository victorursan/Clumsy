//
//  ClumsyScoreInnerBoxView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreInnerBoxView.h"

@implementation ClumsyScoreInnerBoxView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
       self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

+ (id)viewWithFrame:(CGRect)frame {
  return [[ClumsyScoreInnerBoxView alloc] initWithFrame:frame];
}

- (void)drawRect:(CGRect)rect
{//// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  //// Color Declarations
  UIColor* shadowColor2 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
  UIColor* color7 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.497];
  
  //// Shadow Declarations
  UIColor* buttonShadow = shadowColor2;
  CGSize buttonShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat buttonShadowBlurRadius = 7;
  
  //// Frames
  //CGRect frame = self.frame;
  
  
  //// Group 2
  {
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(self.center.x-140, self.center.y-135/2, 280, 135)];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, buttonShadowOffset, buttonShadowBlurRadius, buttonShadow.CGColor);
    [color7 setFill];
    [rectanglePath fill];
    CGContextRestoreGState(context);
    
  }
  
    
}  


@end
