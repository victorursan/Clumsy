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
  self = [super initWithFrame:CGRectMake(point.x, point.y, 55, 75)];
  if (self) {
    self.delegate = delegate;
    if ([title isEqualToString:@"t"]) {
      self.tag = 1;
      [self setBackgroundImage:[self imageForSelector:@selector(twitterHighlighted)] forState:UIControlStateHighlighted];
      [self setBackgroundImage:[self imageForSelector:@selector(twitterNotHighlighted)] forState:UIControlStateNormal];
    } else if ([title isEqualToString:@"f"]) {
      self.tag = 2;
      [self setBackgroundImage:[self imageForSelector:@selector(facebookHighlighted)] forState:UIControlStateHighlighted];
      [self setBackgroundImage:[self imageForSelector:@selector(facebookNotHighlighted)] forState:UIControlStateNormal];
    }
    [self addTarget:self.delegate action:@selector(socialButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

+ (id)buttonWithTwitterPoint:(CGPoint)point andDelegate:(id)delegate {
  return [[ClumsySocialButton alloc] initWithPoint:point delegate:delegate title:@"t"];
}

+ (id)buttonWithFacebookPoint:(CGPoint)point andDelegate:(id)delegate {
  return [[ClumsySocialButton alloc] initWithPoint:point delegate:delegate title:@"f"];
}

- (UIImage *)imageForSelector:(SEL)selector {
  UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0.0f);
	
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
  [self performSelector: selector];
#pragma clang diagnostic pop
	
  UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  
  return result;
}


- (void)twitterHighlighted {
  [self drawTwitterHighlihhted:YES];
}

- (void)twitterNotHighlighted {
  [self drawTwitterHighlihhted:NO];
}

- (void)facebookHighlighted {
  [self drawFacebookHighlihhted:YES];
}

- (void)facebookNotHighlighted {
  [self drawFacebookHighlihhted:NO];
}

- (void)drawTwitterHighlihhted:(BOOL)isHighlighted {
  //// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  //// Color Declarations
  UIColor* twitterColor = [UIColor colorWithRed: 0.604 green: 0.894 blue: 0.91 alpha: 1];
  UIColor* shadowColor2 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
  UIColor* fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Shadow Declarations
  UIColor* buttonShadow = shadowColor2;
  CGSize buttonShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat buttonShadowBlurRadius = 7;
  UIColor* textShadow = fillColor;
  CGSize textShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat textShadowBlurRadius = 5;
  
  //// Frames
  CGRect frame2 = CGRectMake(0, 0, 55, 75);
  
  
  //// Twitter Button
  {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 14.31)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 14.31)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 18.57)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.62, CGRectGetMinY(frame2) + 18.57)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.62, CGRectGetMinY(frame2) + 21.82)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 21.82)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 28.8)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 25.8, CGRectGetMinY(frame2) + 32.66) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 30.62) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 24.94, CGRectGetMinY(frame2) + 31.91)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.77, CGRectGetMinY(frame2) + 33.79) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 26.67, CGRectGetMinY(frame2) + 33.42) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 27.99, CGRectGetMinY(frame2) + 33.79)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.79, CGRectGetMinY(frame2) + 33.68) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.57, CGRectGetMinY(frame2) + 33.79) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.24, CGRectGetMinY(frame2) + 33.75)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.35, CGRectGetMinY(frame2) + 33.37) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 32.34, CGRectGetMinY(frame2) + 33.6) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 32.86, CGRectGetMinY(frame2) + 33.5)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.35, CGRectGetMinY(frame2) + 30.08)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.97, CGRectGetMinY(frame2) + 30.08)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.16, CGRectGetMinY(frame2) + 30.38) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 32.82, CGRectGetMinY(frame2) + 30.17) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 32.55, CGRectGetMinY(frame2) + 30.27)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.23, CGRectGetMinY(frame2) + 30.54) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.78, CGRectGetMinY(frame2) + 30.48) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.47, CGRectGetMinY(frame2) + 30.54)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.92, CGRectGetMinY(frame2) + 30.26) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.66, CGRectGetMinY(frame2) + 30.54) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.22, CGRectGetMinY(frame2) + 30.45)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.29, CGRectGetMinY(frame2) + 29.53) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.62, CGRectGetMinY(frame2) + 30.08) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.41, CGRectGetMinY(frame2) + 29.84)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.09, CGRectGetMinY(frame2) + 28.48) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.16, CGRectGetMinY(frame2) + 29.22) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.09, CGRectGetMinY(frame2) + 28.87)];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 27.11) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.08, CGRectGetMinY(frame2) + 28.09) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 27.63)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 21.82)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.35, CGRectGetMinY(frame2) + 21.82)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.35, CGRectGetMinY(frame2) + 18.57)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 18.57)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 14.31)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 46, CGRectGetMinY(frame2) + 67)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28, CGRectGetMinY(frame2) + 45.08)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 10.32, CGRectGetMinY(frame2) + 67)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 10, CGRectGetMinY(frame2))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 46, CGRectGetMinY(frame2))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 46, CGRectGetMinY(frame2) + 67)];
    [bezierPath closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, buttonShadowOffset, buttonShadowBlurRadius, buttonShadow.CGColor);
    [twitterColor setFill];
    [bezierPath fill];
    CGContextRestoreGState(context);
    
    
    if (!isHighlighted) {
      //// Text 2 Drawing
      UIBezierPath* text2Path = [UIBezierPath bezierPath];
      [text2Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.35, CGRectGetMinY(frame2) + 33.83)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.79, CGRectGetMinY(frame2) + 34.16) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 32.86, CGRectGetMinY(frame2) + 33.97) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 32.34, CGRectGetMinY(frame2) + 34.08)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.77, CGRectGetMinY(frame2) + 34.28) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.24, CGRectGetMinY(frame2) + 34.24) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.57, CGRectGetMinY(frame2) + 34.28)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 25.8, CGRectGetMinY(frame2) + 33.08) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 27.99, CGRectGetMinY(frame2) + 34.28) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 26.67, CGRectGetMinY(frame2) + 33.88)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 28.99) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 24.94, CGRectGetMinY(frame2) + 32.29) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 30.92)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 21.61)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.62, CGRectGetMinY(frame2) + 21.61)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.62, CGRectGetMinY(frame2) + 18.18)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 18.18)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.5, CGRectGetMinY(frame2) + 13.67)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 13.67)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 18.18)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.35, CGRectGetMinY(frame2) + 18.18)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.35, CGRectGetMinY(frame2) + 21.61)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 21.61)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 27.21)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.09, CGRectGetMinY(frame2) + 28.66) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.07, CGRectGetMinY(frame2) + 27.76) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.08, CGRectGetMinY(frame2) + 28.24)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.29, CGRectGetMinY(frame2) + 29.77) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.09, CGRectGetMinY(frame2) + 29.07) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.16, CGRectGetMinY(frame2) + 29.44)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.92, CGRectGetMinY(frame2) + 30.55) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.41, CGRectGetMinY(frame2) + 30.09) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.62, CGRectGetMinY(frame2) + 30.35)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.23, CGRectGetMinY(frame2) + 30.83) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.22, CGRectGetMinY(frame2) + 30.74) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.66, CGRectGetMinY(frame2) + 30.83)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.16, CGRectGetMinY(frame2) + 30.67) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.47, CGRectGetMinY(frame2) + 30.83) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.78, CGRectGetMinY(frame2) + 30.78)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.97, CGRectGetMinY(frame2) + 30.36) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 32.55, CGRectGetMinY(frame2) + 30.55) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 32.82, CGRectGetMinY(frame2) + 30.45)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.35, CGRectGetMinY(frame2) + 30.36)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.35, CGRectGetMinY(frame2) + 33.83)];
      [text2Path closePath];
      CGContextSaveGState(context);
      CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
      [fillColor setFill];
      [text2Path fill];
      CGContextRestoreGState(context);
      
      [fillColor setStroke];
      text2Path.lineWidth = 1;
      [text2Path stroke];
    }
  }
  
}

- (void)drawFacebookHighlihhted:(BOOL)isHighlighted {
  //// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  //// Color Declarations
  UIColor* facebookColor = [UIColor colorWithRed: 0.255 green: 0.369 blue: 0.608 alpha: 1];
  UIColor* shadowColor2 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
  UIColor* fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Shadow Declarations
  UIColor* buttonShadow = shadowColor2;
  CGSize buttonShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat buttonShadowBlurRadius = 7;
  UIColor* textShadow = fillColor;
  CGSize textShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat textShadowBlurRadius = 5;
  
  //// Frames
  CGRect frame2 = CGRectMake(0, 0, 55, 75);
  
  
  //// Facebook Button
  {
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.76, CGRectGetMinY(frame2) + 12.97)];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 25.31, CGRectGetMinY(frame2) + 14.36) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 27.77, CGRectGetMinY(frame2) + 12.97) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 26.29, CGRectGetMinY(frame2) + 13.43)];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 18.5) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 24.33, CGRectGetMinY(frame2) + 15.28) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 16.66)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 18.92)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.77, CGRectGetMinY(frame2) + 18.92)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.77, CGRectGetMinY(frame2) + 22.2)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 22.2)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 34)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.67, CGRectGetMinY(frame2) + 34)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.67, CGRectGetMinY(frame2) + 22.2)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.24, CGRectGetMinY(frame2) + 22.2)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.24, CGRectGetMinY(frame2) + 18.92)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.51, CGRectGetMinY(frame2) + 18.92)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.51, CGRectGetMinY(frame2) + 18.8)];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.01, CGRectGetMinY(frame2) + 16.83) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.51, CGRectGetMinY(frame2) + 17.82) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.68, CGRectGetMinY(frame2) + 17.17)];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 30.94, CGRectGetMinY(frame2) + 16.32) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.35, CGRectGetMinY(frame2) + 16.49) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.99, CGRectGetMinY(frame2) + 16.32)];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.05, CGRectGetMinY(frame2) + 16.44) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.33, CGRectGetMinY(frame2) + 16.32) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.7, CGRectGetMinY(frame2) + 16.36)];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.89, CGRectGetMinY(frame2) + 16.65) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 32.39, CGRectGetMinY(frame2) + 16.52) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 32.67, CGRectGetMinY(frame2) + 16.59)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.25, CGRectGetMinY(frame2) + 16.65)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.25, CGRectGetMinY(frame2) + 13.24)];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.71, CGRectGetMinY(frame2) + 13.05) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 32.8, CGRectGetMinY(frame2) + 13.16) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 32.29, CGRectGetMinY(frame2) + 13.1)];
    [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.76, CGRectGetMinY(frame2) + 12.97) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.12, CGRectGetMinY(frame2) + 13) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.48, CGRectGetMinY(frame2) + 12.97)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 46, CGRectGetMinY(frame2) + 67)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28, CGRectGetMinY(frame2) + 45.08)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 10.32, CGRectGetMinY(frame2) + 67)];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 10, CGRectGetMinY(frame2))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 46, CGRectGetMinY(frame2))];
    [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 46, CGRectGetMinY(frame2) + 67)];
    [bezier2Path closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, buttonShadowOffset, buttonShadowBlurRadius, buttonShadow.CGColor);
    [facebookColor setFill];
    [bezier2Path fill];
    CGContextRestoreGState(context);
    
    
    if (!isHighlighted) {
      //// Text 2 Drawing
      UIBezierPath* text2Path = [UIBezierPath bezierPath];
      [text2Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.25, CGRectGetMinY(frame2) + 16.65)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.89, CGRectGetMinY(frame2) + 16.65)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.05, CGRectGetMinY(frame2) + 16.44) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 32.67, CGRectGetMinY(frame2) + 16.59) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 32.39, CGRectGetMinY(frame2) + 16.52)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 30.94, CGRectGetMinY(frame2) + 16.32) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.7, CGRectGetMinY(frame2) + 16.36) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.33, CGRectGetMinY(frame2) + 16.32)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.01, CGRectGetMinY(frame2) + 16.83) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.99, CGRectGetMinY(frame2) + 16.32) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.35, CGRectGetMinY(frame2) + 16.49)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.51, CGRectGetMinY(frame2) + 18.8) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.68, CGRectGetMinY(frame2) + 17.17) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.51, CGRectGetMinY(frame2) + 17.82)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.51, CGRectGetMinY(frame2) + 18.92)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.24, CGRectGetMinY(frame2) + 18.92)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.24, CGRectGetMinY(frame2) + 22.2)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.67, CGRectGetMinY(frame2) + 22.2)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.67, CGRectGetMinY(frame2) + 34)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 34)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 22.2)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.77, CGRectGetMinY(frame2) + 22.2)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.77, CGRectGetMinY(frame2) + 18.92)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 18.92)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 18.5)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 25.31, CGRectGetMinY(frame2) + 14.36) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 23.84, CGRectGetMinY(frame2) + 16.66) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 24.33, CGRectGetMinY(frame2) + 15.28)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.76, CGRectGetMinY(frame2) + 12.97) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 26.29, CGRectGetMinY(frame2) + 13.43) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 27.77, CGRectGetMinY(frame2) + 12.97)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.71, CGRectGetMinY(frame2) + 13.05) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.48, CGRectGetMinY(frame2) + 12.97) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.12, CGRectGetMinY(frame2) + 13)];
      [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.25, CGRectGetMinY(frame2) + 13.24) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 32.29, CGRectGetMinY(frame2) + 13.1) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 32.8, CGRectGetMinY(frame2) + 13.16)];
      [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 33.25, CGRectGetMinY(frame2) + 16.65)];
      [text2Path closePath];
      CGContextSaveGState(context);
      CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
      [fillColor setFill];
      [text2Path fill];
      CGContextRestoreGState(context);
      
      [fillColor setStroke];
      text2Path.lineWidth = 1;
      [text2Path stroke];
    }
  }
}

@end
