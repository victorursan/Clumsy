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

- (id)initForScoreViewWithPoint:(CGPoint)point delegate:(id)delegate title:(NSString *)title {
  self = [super initWithFrame:CGRectMake(point.x, point.y, 45, 45)];
  if (self) {
    self.delegate = delegate;
    if ([title isEqualToString:@"t"]) {
      self.tag = 1;
      [self setBackgroundImage:[self imageForSelector:@selector(twitterScoreHighlighted)] forState:UIControlStateHighlighted];
      [self setBackgroundImage:[self imageForSelector:@selector(twitterScoreNotHighlighted)] forState:UIControlStateNormal];
    } else if ([title isEqualToString:@"f"]) {
      self.tag = 2;
      [self setBackgroundImage:[self imageForSelector:@selector(facebookScoreHighlighted)] forState:UIControlStateHighlighted];
      [self setBackgroundImage:[self imageForSelector:@selector(facebookScoreNotHighlighted)] forState:UIControlStateNormal];
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

+ (id)buttonForScoreViewWithTwitterPoint:(CGPoint)point andDelegate:(id)delegate {
  return [[ClumsySocialButton alloc] initForScoreViewWithPoint:point delegate:delegate title:@"t"];
}

+ (id)buttonForScoreViewWithFacebookPoint:(CGPoint)point andDelegate:(id)delegate {
  return [[ClumsySocialButton alloc] initForScoreViewWithPoint:point delegate:delegate title:@"f"];
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
  [self drawTwitterHighlighted:YES];
}

- (void)twitterNotHighlighted {
  [self drawTwitterHighlighted:NO];
}

- (void)facebookHighlighted {
  [self drawFacebookHighlighted:YES];
}

- (void)facebookNotHighlighted {
  [self drawFacebookHighlighted:NO];
}

- (void)twitterScoreHighlighted {
  [self drawTwitterScoreHighlighted:YES];
}

- (void)twitterScoreNotHighlighted {
  [self drawTwitterScoreHighlighted:NO];
}

- (void)facebookScoreHighlighted {
  [self drawFacebookScoreHighlighted:YES];
}

- (void)facebookScoreNotHighlighted {
  [self drawFacebookScoreHighlighted:NO];
}

- (void)drawTwitterHighlighted:(BOOL)isHighlighted {
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

- (void)drawFacebookHighlighted:(BOOL)isHighlighted {
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

- (void)drawTwitterScoreHighlighted:(BOOL)isHighlighted {//// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  //// Color Declarations
  UIColor* twitterColor = [UIColor colorWithRed: 0.604 green: 0.894 blue: 0.91 alpha: 1];
  UIColor* fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Shadow Declarations
  UIColor* textShadow = fillColor;
  CGSize textShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat textShadowBlurRadius = 5;
  
  //// Frames
  CGRect frame4 = CGRectMake(0, 0, 45, 45);
  
  
  //// twitter score
  {
  //// Bezier 7 Drawing
  UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
  [bezier7Path moveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 12.67)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 12.67)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 17.18)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 17.62, CGRectGetMinY(frame4) + 17.18)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 17.62, CGRectGetMinY(frame4) + 20.61)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 20.61)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 27.99)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 20.8, CGRectGetMinY(frame4) + 32.08) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 29.92) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 19.94, CGRectGetMinY(frame4) + 31.29)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.77, CGRectGetMinY(frame4) + 33.28) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 21.67, CGRectGetMinY(frame4) + 32.88) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 22.99, CGRectGetMinY(frame4) + 33.28)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 26.79, CGRectGetMinY(frame4) + 33.16) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 25.57, CGRectGetMinY(frame4) + 33.28) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 26.24, CGRectGetMinY(frame4) + 33.24)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 28.35, CGRectGetMinY(frame4) + 32.83) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 27.34, CGRectGetMinY(frame4) + 33.08) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 27.86, CGRectGetMinY(frame4) + 32.97)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 28.35, CGRectGetMinY(frame4) + 29.36)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 27.97, CGRectGetMinY(frame4) + 29.36)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 27.16, CGRectGetMinY(frame4) + 29.67) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 27.82, CGRectGetMinY(frame4) + 29.45) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 27.55, CGRectGetMinY(frame4) + 29.55)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 26.23, CGRectGetMinY(frame4) + 29.83) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 26.78, CGRectGetMinY(frame4) + 29.78) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 26.47, CGRectGetMinY(frame4) + 29.83)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.92, CGRectGetMinY(frame4) + 29.55) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 25.66, CGRectGetMinY(frame4) + 29.83) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 25.22, CGRectGetMinY(frame4) + 29.74)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.29, CGRectGetMinY(frame4) + 28.77) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 24.62, CGRectGetMinY(frame4) + 29.35) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 24.41, CGRectGetMinY(frame4) + 29.09)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.09, CGRectGetMinY(frame4) + 27.66) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 24.16, CGRectGetMinY(frame4) + 28.44) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 24.09, CGRectGetMinY(frame4) + 28.07)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 26.21) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 24.08, CGRectGetMinY(frame4) + 27.24) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 26.76)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 20.61)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 28.35, CGRectGetMinY(frame4) + 20.61)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 28.35, CGRectGetMinY(frame4) + 17.18)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 17.18)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 12.67)];
  [bezier7Path closePath];
  [bezier7Path moveToPoint: CGPointMake(CGRectGetMinX(frame4) + 45, CGRectGetMinY(frame4) + 4)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 45, CGRectGetMinY(frame4) + 41)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 41, CGRectGetMinY(frame4) + 45) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 45, CGRectGetMinY(frame4) + 43.21) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 43.21, CGRectGetMinY(frame4) + 45)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 4, CGRectGetMinY(frame4) + 45)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4), CGRectGetMinY(frame4) + 41) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 1.79, CGRectGetMinY(frame4) + 45) controlPoint2: CGPointMake(CGRectGetMinX(frame4), CGRectGetMinY(frame4) + 43.21)];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4), CGRectGetMinY(frame4) + 4)];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 4, CGRectGetMinY(frame4)) controlPoint1: CGPointMake(CGRectGetMinX(frame4), CGRectGetMinY(frame4) + 1.79) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 1.79, CGRectGetMinY(frame4))];
  [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 41, CGRectGetMinY(frame4))];
  [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 45, CGRectGetMinY(frame4) + 4) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 43.21, CGRectGetMinY(frame4)) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 45, CGRectGetMinY(frame4) + 1.79)];
  [bezier7Path closePath];
  [twitterColor setFill];
  [bezier7Path fill];
  
  if (!isHighlighted) {
    //// Text 12 Drawing
    UIBezierPath* text12Path = [UIBezierPath bezierPath];
    [text12Path moveToPoint: CGPointMake(CGRectGetMinX(frame4) + 28.35, CGRectGetMinY(frame4) + 32.83)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 26.79, CGRectGetMinY(frame4) + 33.16) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 27.86, CGRectGetMinY(frame4) + 32.97) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 27.34, CGRectGetMinY(frame4) + 33.08)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.77, CGRectGetMinY(frame4) + 33.28) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 26.24, CGRectGetMinY(frame4) + 33.24) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 25.57, CGRectGetMinY(frame4) + 33.28)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 20.8, CGRectGetMinY(frame4) + 32.08) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 22.99, CGRectGetMinY(frame4) + 33.28) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 21.67, CGRectGetMinY(frame4) + 32.88)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 27.99) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 19.94, CGRectGetMinY(frame4) + 31.29) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 29.92)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 20.61)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 17.62, CGRectGetMinY(frame4) + 20.61)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 17.62, CGRectGetMinY(frame4) + 17.18)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 17.18)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 19.5, CGRectGetMinY(frame4) + 12.67)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 12.67)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 17.18)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 28.35, CGRectGetMinY(frame4) + 17.18)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 28.35, CGRectGetMinY(frame4) + 20.61)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 20.61)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 26.21)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.09, CGRectGetMinY(frame4) + 27.66) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 24.07, CGRectGetMinY(frame4) + 26.76) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 24.08, CGRectGetMinY(frame4) + 27.24)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.29, CGRectGetMinY(frame4) + 28.77) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 24.09, CGRectGetMinY(frame4) + 28.07) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 24.16, CGRectGetMinY(frame4) + 28.44)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 24.92, CGRectGetMinY(frame4) + 29.55) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 24.41, CGRectGetMinY(frame4) + 29.09) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 24.62, CGRectGetMinY(frame4) + 29.35)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 26.23, CGRectGetMinY(frame4) + 29.83) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 25.22, CGRectGetMinY(frame4) + 29.74) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 25.66, CGRectGetMinY(frame4) + 29.83)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 27.16, CGRectGetMinY(frame4) + 29.67) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 26.47, CGRectGetMinY(frame4) + 29.83) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 26.78, CGRectGetMinY(frame4) + 29.78)];
    [text12Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame4) + 27.97, CGRectGetMinY(frame4) + 29.36) controlPoint1: CGPointMake(CGRectGetMinX(frame4) + 27.55, CGRectGetMinY(frame4) + 29.55) controlPoint2: CGPointMake(CGRectGetMinX(frame4) + 27.82, CGRectGetMinY(frame4) + 29.45)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 28.35, CGRectGetMinY(frame4) + 29.36)];
    [text12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame4) + 28.35, CGRectGetMinY(frame4) + 32.83)];
    [text12Path closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [text12Path fill];
    CGContextRestoreGState(context);
    
    [fillColor setStroke];
    text12Path.lineWidth = 1;
    [text12Path stroke];
  }
  }
}

- (void)drawFacebookScoreHighlighted:(BOOL)isHighlighted {//// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  //// Color Declarations
  UIColor* facebookColor = [UIColor colorWithRed: 0.255 green: 0.369 blue: 0.608 alpha: 1];
  UIColor* fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Shadow Declarations
  UIColor* textShadow = fillColor;
  CGSize textShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat textShadowBlurRadius = 5;
  
  //// Frames
  CGRect frame6 = CGRectMake(0, 0, 45, 45);
  
  
  //// Group 17
  {
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame6) + 24.76, CGRectGetMinY(frame6) + 11.97)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 20.31, CGRectGetMinY(frame6) + 13.36) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 22.77, CGRectGetMinY(frame6) + 11.97) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 21.29, CGRectGetMinY(frame6) + 12.43)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 17.5) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 19.33, CGRectGetMinY(frame6) + 14.28) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 15.66)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 17.92)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 16.77, CGRectGetMinY(frame6) + 17.92)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 16.77, CGRectGetMinY(frame6) + 21.2)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 21.2)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 33)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 23.67, CGRectGetMinY(frame6) + 33)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 23.67, CGRectGetMinY(frame6) + 21.2)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 27.24, CGRectGetMinY(frame6) + 21.2)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 27.24, CGRectGetMinY(frame6) + 17.92)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 23.51, CGRectGetMinY(frame6) + 17.92)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 23.51, CGRectGetMinY(frame6) + 17.8)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 24.01, CGRectGetMinY(frame6) + 15.83) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 23.51, CGRectGetMinY(frame6) + 16.82) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 23.68, CGRectGetMinY(frame6) + 16.17)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 25.94, CGRectGetMinY(frame6) + 15.32) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 24.35, CGRectGetMinY(frame6) + 15.49) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 24.99, CGRectGetMinY(frame6) + 15.32)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 27.05, CGRectGetMinY(frame6) + 15.44) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 26.33, CGRectGetMinY(frame6) + 15.32) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 26.7, CGRectGetMinY(frame6) + 15.36)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 27.89, CGRectGetMinY(frame6) + 15.65) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 27.39, CGRectGetMinY(frame6) + 15.52) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 27.67, CGRectGetMinY(frame6) + 15.59)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 28.25, CGRectGetMinY(frame6) + 15.65)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 28.25, CGRectGetMinY(frame6) + 12.24)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 26.71, CGRectGetMinY(frame6) + 12.05) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 27.8, CGRectGetMinY(frame6) + 12.16) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 27.29, CGRectGetMinY(frame6) + 12.1)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 24.76, CGRectGetMinY(frame6) + 11.97) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 26.12, CGRectGetMinY(frame6) + 12) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 25.48, CGRectGetMinY(frame6) + 11.97)];
  [bezierPath closePath];
  [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame6) + 45, CGRectGetMinY(frame6) + 4)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 45, CGRectGetMinY(frame6) + 41)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 41, CGRectGetMinY(frame6) + 45) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 45, CGRectGetMinY(frame6) + 43.21) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 43.21, CGRectGetMinY(frame6) + 45)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 4, CGRectGetMinY(frame6) + 45)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6), CGRectGetMinY(frame6) + 41) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 1.79, CGRectGetMinY(frame6) + 45) controlPoint2: CGPointMake(CGRectGetMinX(frame6), CGRectGetMinY(frame6) + 43.21)];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6), CGRectGetMinY(frame6) + 4)];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 4, CGRectGetMinY(frame6)) controlPoint1: CGPointMake(CGRectGetMinX(frame6), CGRectGetMinY(frame6) + 1.79) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 1.79, CGRectGetMinY(frame6))];
  [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 41, CGRectGetMinY(frame6))];
  [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 45, CGRectGetMinY(frame6) + 4) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 43.21, CGRectGetMinY(frame6)) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 45, CGRectGetMinY(frame6) + 1.79)];
  [bezierPath closePath];
  [facebookColor setFill];
  [bezierPath fill];
  
  if (!isHighlighted) {
  //// Text 14 Drawing
  UIBezierPath* text14Path = [UIBezierPath bezierPath];
  [text14Path moveToPoint: CGPointMake(CGRectGetMinX(frame6) + 28.25, CGRectGetMinY(frame6) + 16.15)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 27.89, CGRectGetMinY(frame6) + 16.15)];
  [text14Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 27.05, CGRectGetMinY(frame6) + 15.94) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 27.67, CGRectGetMinY(frame6) + 16.09) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 27.39, CGRectGetMinY(frame6) + 16.02)];
  [text14Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 25.94, CGRectGetMinY(frame6) + 15.82) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 26.7, CGRectGetMinY(frame6) + 15.86) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 26.33, CGRectGetMinY(frame6) + 15.82)];
  [text14Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 24.01, CGRectGetMinY(frame6) + 16.33) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 24.99, CGRectGetMinY(frame6) + 15.82) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 24.35, CGRectGetMinY(frame6) + 15.99)];
  [text14Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 23.51, CGRectGetMinY(frame6) + 18.3) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 23.68, CGRectGetMinY(frame6) + 16.67) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 23.51, CGRectGetMinY(frame6) + 17.32)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 23.51, CGRectGetMinY(frame6) + 18.42)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 27.24, CGRectGetMinY(frame6) + 18.42)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 27.24, CGRectGetMinY(frame6) + 21.7)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 23.67, CGRectGetMinY(frame6) + 21.7)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 23.67, CGRectGetMinY(frame6) + 33.5)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 33.5)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 21.7)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 16.77, CGRectGetMinY(frame6) + 21.7)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 16.77, CGRectGetMinY(frame6) + 18.42)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 18.42)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 18)];
  [text14Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 20.31, CGRectGetMinY(frame6) + 13.86) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 18.84, CGRectGetMinY(frame6) + 16.16) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 19.33, CGRectGetMinY(frame6) + 14.78)];
  [text14Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 24.76, CGRectGetMinY(frame6) + 12.47) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 21.29, CGRectGetMinY(frame6) + 12.93) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 22.77, CGRectGetMinY(frame6) + 12.47)];
  [text14Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 26.71, CGRectGetMinY(frame6) + 12.55) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 25.48, CGRectGetMinY(frame6) + 12.47) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 26.12, CGRectGetMinY(frame6) + 12.5)];
  [text14Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame6) + 28.25, CGRectGetMinY(frame6) + 12.74) controlPoint1: CGPointMake(CGRectGetMinX(frame6) + 27.29, CGRectGetMinY(frame6) + 12.6) controlPoint2: CGPointMake(CGRectGetMinX(frame6) + 27.8, CGRectGetMinY(frame6) + 12.66)];
  [text14Path addLineToPoint: CGPointMake(CGRectGetMinX(frame6) + 28.25, CGRectGetMinY(frame6) + 16.15)];
  [text14Path closePath];
  CGContextSaveGState(context);
  CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
  [fillColor setFill];
  [text14Path fill];
  CGContextRestoreGState(context);
  
  [fillColor setStroke];
  text14Path.lineWidth = 1;
  [text14Path stroke];
  }
}

}

@end
