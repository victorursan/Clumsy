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

- (void)drawRect:(CGRect)rect{
  //// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  //// Color Declarations
  UIColor* shadowColor2 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
  UIColor* color18 = [UIColor colorWithRed: 0.286 green: 0.286 blue: 0.286 alpha: 0.45];
  
  //// Shadow Declarations
  UIColor* buttonShadow = [shadowColor2 colorWithAlphaComponent: 0.67];
  CGSize buttonShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat buttonShadowBlurRadius = 7;

  
  {
  //// Rounded Rectangle Drawing
  UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(10, 25, 300, 200) cornerRadius: 4];
  CGContextSaveGState(context);
  CGContextSetShadowWithColor(context, buttonShadowOffset, buttonShadowBlurRadius, buttonShadow.CGColor);
  [color18 setFill];
  [roundedRectanglePath fill];
  CGContextRestoreGState(context);
  
  }
  

}


@end
