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
  self = [super initWithFrame:CGRectMake(point.x, point.y, 55, 104)];
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
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 33.31)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 33.31)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 37.57)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.62, CGRectGetMinY(frame2) + 37.57)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.62, CGRectGetMinY(frame2) + 40.82)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 40.82)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 47.8)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.8, CGRectGetMinY(frame2) + 51.66) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 49.62) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 23.94, CGRectGetMinY(frame2) + 50.91)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.77, CGRectGetMinY(frame2) + 52.79) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 25.67, CGRectGetMinY(frame2) + 52.42) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 26.99, CGRectGetMinY(frame2) + 52.79)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 30.79, CGRectGetMinY(frame2) + 52.68) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.57, CGRectGetMinY(frame2) + 52.79) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.24, CGRectGetMinY(frame2) + 52.75)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.35, CGRectGetMinY(frame2) + 52.37) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.34, CGRectGetMinY(frame2) + 52.6) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.86, CGRectGetMinY(frame2) + 52.5)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.35, CGRectGetMinY(frame2) + 49.08)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.97, CGRectGetMinY(frame2) + 49.08)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.16, CGRectGetMinY(frame2) + 49.38) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.82, CGRectGetMinY(frame2) + 49.17) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.55, CGRectGetMinY(frame2) + 49.27)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 30.23, CGRectGetMinY(frame2) + 49.54) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.78, CGRectGetMinY(frame2) + 49.48) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.47, CGRectGetMinY(frame2) + 49.54)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.92, CGRectGetMinY(frame2) + 49.26) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.66, CGRectGetMinY(frame2) + 49.54) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.22, CGRectGetMinY(frame2) + 49.45)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.29, CGRectGetMinY(frame2) + 48.53) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.62, CGRectGetMinY(frame2) + 49.08) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.41, CGRectGetMinY(frame2) + 48.84)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.09, CGRectGetMinY(frame2) + 47.48) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.16, CGRectGetMinY(frame2) + 48.22) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.09, CGRectGetMinY(frame2) + 47.87)];
  [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 46.11) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.08, CGRectGetMinY(frame2) + 47.09) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 46.63)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 40.82)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.35, CGRectGetMinY(frame2) + 40.82)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.35, CGRectGetMinY(frame2) + 37.57)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 37.57)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 33.31)];
  [bezier2Path closePath];
  [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2) + 86)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 27, CGRectGetMinY(frame2) + 64.08)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 9.32, CGRectGetMinY(frame2) + 86)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 9, CGRectGetMinY(frame2) + 19)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2) + 19)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2) + 86)];
  [bezier2Path closePath];
  [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 9, CGRectGetMinY(frame2) + 19)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2) + 19)];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2))];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 9, CGRectGetMinY(frame2))];
  [bezier2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 9, CGRectGetMinY(frame2) + 19)];
  [bezier2Path closePath];
  CGContextSaveGState(context);
  CGContextSetShadowWithColor(context, buttonShadowOffset, buttonShadowBlurRadius, buttonShadow.CGColor);
  [twitterColor setFill];
  [bezier2Path fill];
  CGContextRestoreGState(context);
  
  if (!isHighlighted) {
    //// Text 2 Drawing
    UIBezierPath* textPath = [UIBezierPath bezierPath];
    [textPath moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.35, CGRectGetMinY(frame2) + 52.83)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 30.79, CGRectGetMinY(frame2) + 53.16) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.86, CGRectGetMinY(frame2) + 52.97) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.34, CGRectGetMinY(frame2) + 53.08)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.77, CGRectGetMinY(frame2) + 53.28) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.24, CGRectGetMinY(frame2) + 53.24) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.57, CGRectGetMinY(frame2) + 53.28)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.8, CGRectGetMinY(frame2) + 52.08) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 26.99, CGRectGetMinY(frame2) + 53.28) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 25.67, CGRectGetMinY(frame2) + 52.88)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 47.99) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 23.94, CGRectGetMinY(frame2) + 51.29) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 49.92)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 40.61)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.62, CGRectGetMinY(frame2) + 40.61)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 21.62, CGRectGetMinY(frame2) + 37.18)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 37.18)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 23.5, CGRectGetMinY(frame2) + 32.67)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 32.67)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 37.18)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.35, CGRectGetMinY(frame2) + 37.18)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.35, CGRectGetMinY(frame2) + 40.61)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 40.61)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 46.21)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.09, CGRectGetMinY(frame2) + 47.66) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.07, CGRectGetMinY(frame2) + 46.76) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.08, CGRectGetMinY(frame2) + 47.24)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.29, CGRectGetMinY(frame2) + 48.77) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.09, CGRectGetMinY(frame2) + 48.07) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.16, CGRectGetMinY(frame2) + 48.44)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.92, CGRectGetMinY(frame2) + 49.55) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.41, CGRectGetMinY(frame2) + 49.09) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.62, CGRectGetMinY(frame2) + 49.35)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 30.23, CGRectGetMinY(frame2) + 49.83) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.22, CGRectGetMinY(frame2) + 49.74) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.66, CGRectGetMinY(frame2) + 49.83)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.16, CGRectGetMinY(frame2) + 49.67) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.47, CGRectGetMinY(frame2) + 49.83) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.78, CGRectGetMinY(frame2) + 49.78)];
    [textPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.97, CGRectGetMinY(frame2) + 49.36) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.55, CGRectGetMinY(frame2) + 49.55) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.82, CGRectGetMinY(frame2) + 49.45)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.35, CGRectGetMinY(frame2) + 49.36)];
    [textPath addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.35, CGRectGetMinY(frame2) + 52.83)];
    [textPath closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [textPath fill];
    CGContextRestoreGState(context);
    
    [fillColor setStroke];
    textPath.lineWidth = 1;
    [textPath stroke];
    
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
  CGRect frame2 = CGRectMake(0, 0, 55, 104);
  
  
  //// Facebook Button
  {
  //// Bezier 2 Drawing
  UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
  [bezier5Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.76, CGRectGetMinY(frame2) + 31.97)];
  [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.31, CGRectGetMinY(frame2) + 33.36) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 26.77, CGRectGetMinY(frame2) + 31.97) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 25.29, CGRectGetMinY(frame2) + 32.43)];
  [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 37.5) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 23.33, CGRectGetMinY(frame2) + 34.28) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 35.66)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 37.92)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 20.77, CGRectGetMinY(frame2) + 37.92)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 20.77, CGRectGetMinY(frame2) + 41.2)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 41.2)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 53)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 27.67, CGRectGetMinY(frame2) + 53)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 27.67, CGRectGetMinY(frame2) + 41.2)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.24, CGRectGetMinY(frame2) + 41.2)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.24, CGRectGetMinY(frame2) + 37.92)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 27.51, CGRectGetMinY(frame2) + 37.92)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 27.51, CGRectGetMinY(frame2) + 37.8)];
  [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.01, CGRectGetMinY(frame2) + 35.83) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 27.51, CGRectGetMinY(frame2) + 36.82) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 27.68, CGRectGetMinY(frame2) + 36.17)];
  [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.94, CGRectGetMinY(frame2) + 35.32) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.35, CGRectGetMinY(frame2) + 35.49) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.99, CGRectGetMinY(frame2) + 35.32)];
  [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.05, CGRectGetMinY(frame2) + 35.44) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.33, CGRectGetMinY(frame2) + 35.32) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.7, CGRectGetMinY(frame2) + 35.36)];
  [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.89, CGRectGetMinY(frame2) + 35.65) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.39, CGRectGetMinY(frame2) + 35.52) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.67, CGRectGetMinY(frame2) + 35.59)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.25, CGRectGetMinY(frame2) + 35.65)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.25, CGRectGetMinY(frame2) + 32.24)];
  [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 30.71, CGRectGetMinY(frame2) + 32.05) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.8, CGRectGetMinY(frame2) + 32.16) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.29, CGRectGetMinY(frame2) + 32.1)];
  [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.76, CGRectGetMinY(frame2) + 31.97) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.12, CGRectGetMinY(frame2) + 32) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 29.48, CGRectGetMinY(frame2) + 31.97)];
  [bezier5Path closePath];
  [bezier5Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2) + 86)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 27, CGRectGetMinY(frame2) + 64.08)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 9.32, CGRectGetMinY(frame2) + 86)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 9, CGRectGetMinY(frame2) + 19)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2) + 19)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2) + 86)];
  [bezier5Path closePath];
  [bezier5Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 9, CGRectGetMinY(frame2) + 19)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2) + 19)];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 45, CGRectGetMinY(frame2))];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 9, CGRectGetMinY(frame2))];
  [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 9, CGRectGetMinY(frame2) + 19)];
  [bezier5Path closePath];
  CGContextSaveGState(context);
  CGContextSetShadowWithColor(context, buttonShadowOffset, buttonShadowBlurRadius, buttonShadow.CGColor);
  [facebookColor setFill];
  [bezier5Path fill];
  CGContextRestoreGState(context);
  
  
  
  
  
  
  if (!isHighlighted) {
    //// Text 2 Drawing
    UIBezierPath* text2Path = [UIBezierPath bezierPath];
    [text2Path moveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.25, CGRectGetMinY(frame2) + 35.65)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.89, CGRectGetMinY(frame2) + 35.65)];
    [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.05, CGRectGetMinY(frame2) + 35.44) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.67, CGRectGetMinY(frame2) + 35.59) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.39, CGRectGetMinY(frame2) + 35.52)];
    [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 29.94, CGRectGetMinY(frame2) + 35.32) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 30.7, CGRectGetMinY(frame2) + 35.36) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.33, CGRectGetMinY(frame2) + 35.32)];
    [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.01, CGRectGetMinY(frame2) + 35.83) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 28.99, CGRectGetMinY(frame2) + 35.32) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 28.35, CGRectGetMinY(frame2) + 35.49)];
    [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 27.51, CGRectGetMinY(frame2) + 37.8) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 27.68, CGRectGetMinY(frame2) + 36.17) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 27.51, CGRectGetMinY(frame2) + 36.82)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 27.51, CGRectGetMinY(frame2) + 37.92)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.24, CGRectGetMinY(frame2) + 37.92)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 31.24, CGRectGetMinY(frame2) + 41.2)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 27.67, CGRectGetMinY(frame2) + 41.2)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 27.67, CGRectGetMinY(frame2) + 53)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 53)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 41.2)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 20.77, CGRectGetMinY(frame2) + 41.2)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 20.77, CGRectGetMinY(frame2) + 37.92)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 37.92)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 37.5)];
    [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 24.31, CGRectGetMinY(frame2) + 33.36) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 22.84, CGRectGetMinY(frame2) + 35.66) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 23.33, CGRectGetMinY(frame2) + 34.28)];
    [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 28.76, CGRectGetMinY(frame2) + 31.97) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 25.29, CGRectGetMinY(frame2) + 32.43) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 26.77, CGRectGetMinY(frame2) + 31.97)];
    [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 30.71, CGRectGetMinY(frame2) + 32.05) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 29.48, CGRectGetMinY(frame2) + 31.97) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 30.12, CGRectGetMinY(frame2) + 32)];
    [text2Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.25, CGRectGetMinY(frame2) + 32.24) controlPoint1: CGPointMake(CGRectGetMinX(frame2) + 31.29, CGRectGetMinY(frame2) + 32.1) controlPoint2: CGPointMake(CGRectGetMinX(frame2) + 31.8, CGRectGetMinY(frame2) + 32.16)];
    [text2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame2) + 32.25, CGRectGetMinY(frame2) + 35.65)];
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
