//
//  ClumsyScoreOkButton.m
//  Clumsy
//
//  Created by Victor Ursan on 8/17/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreOkButton.h"

@implementation ClumsyScoreOkButton

- (id)initWithPoint:(CGPoint)point andDelegate:(id)delegate {
  self = [super initWithFrame:CGRectMake(point.x, point.y, 126, 60)];
  if (self) {
    self.delegate = delegate;
    [self setBackgroundImage:[self imageForSelector:@selector(buttonHighlighted)] forState:UIControlStateHighlighted];
    [self setBackgroundImage:[self imageForSelector:@selector(buttonNotHighlighted)] forState:UIControlStateNormal];
    [self addTarget:self.delegate action:@selector(okButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

+ (id)buttonWithPoint:(CGPoint)point andDelegate:(id)delegate {
  return [[ClumsyScoreOkButton alloc] initWithPoint:point andDelegate:delegate];
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

- (void)buttonHighlighted {
  [self drawRectHighlighted:YES];
}

- (void)buttonNotHighlighted {
  [self drawRectHighlighted:NO];
}

- (void)drawRectHighlighted:(BOOL)isHighlighted  {
  //// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  UIColor* fillColor;
  //// Color Declarations
  if (!isHighlighted) {
    fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  } else {
    fillColor = [UIColor colorWithRed: 0.286 green: 0.286 blue: 0.286 alpha: 0.456];
  }
  
  //// Shadow Declarations
  UIColor* textShadow = fillColor;
  CGSize textShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat textShadowBlurRadius = 5;
  
  //// Frames
  CGRect frame14 = CGRectMake(0, 0, 126, 60);
  
  
  //// Group 20
  {
  //// Rounded Rectangle 2 Drawing
  UIBezierPath* roundedRectangle2Path = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(CGRectGetMinX(frame14) + 5, CGRectGetMinY(frame14) + 4, 116, 51) byRoundingCorners: UIRectCornerBottomRight cornerRadii: CGSizeMake(4, 4)];
  [roundedRectangle2Path closePath];
  CGContextSaveGState(context);
  CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
  [fillColor setStroke];
  roundedRectangle2Path.lineWidth = 1;
  [roundedRectangle2Path stroke];
  CGContextRestoreGState(context);
  
  
  //// Group 10
    {
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    CGContextBeginTransparencyLayer(context, NULL);
    
    
    //// Bezier 4 Drawing
    UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
    [bezier4Path moveToPoint: CGPointMake(CGRectGetMinX(frame14) + 43.59, CGRectGetMinY(frame14) + 36.55)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 41.22, CGRectGetMinY(frame14) + 28.48) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 42.01, CGRectGetMinY(frame14) + 34.32) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 41.22, CGRectGetMinY(frame14) + 31.62)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 43.99, CGRectGetMinY(frame14) + 19.83) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 41.22, CGRectGetMinY(frame14) + 24.99) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 42.14, CGRectGetMinY(frame14) + 22.11)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 52.52, CGRectGetMinY(frame14) + 16.28) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 46.06, CGRectGetMinY(frame14) + 17.47) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 48.9, CGRectGetMinY(frame14) + 16.28)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 59.32, CGRectGetMinY(frame14) + 18.24) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 55.22, CGRectGetMinY(frame14) + 16.28) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 57.48, CGRectGetMinY(frame14) + 16.94)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 61.47, CGRectGetMinY(frame14) + 20.34) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 60.12, CGRectGetMinY(frame14) + 18.82) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 60.84, CGRectGetMinY(frame14) + 19.51)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 63.87, CGRectGetMinY(frame14) + 25.84) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 62.69, CGRectGetMinY(frame14) + 21.9) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 63.48, CGRectGetMinY(frame14) + 23.73)];
    [bezier4Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 66.11, CGRectGetMinY(frame14) + 25.84)];
    [bezier4Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 62.2, CGRectGetMinY(frame14) + 29.53)];
    [bezier4Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 58.3, CGRectGetMinY(frame14) + 25.84)];
    [bezier4Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 63.87, CGRectGetMinY(frame14) + 25.84)];
    [bezier4Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 60.55, CGRectGetMinY(frame14) + 25.84)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 59, CGRectGetMinY(frame14) + 22.09) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 60.24, CGRectGetMinY(frame14) + 24.49) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 59.73, CGRectGetMinY(frame14) + 23.24)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 52.91, CGRectGetMinY(frame14) + 19.1) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 57.75, CGRectGetMinY(frame14) + 20.1) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 55.71, CGRectGetMinY(frame14) + 19.1)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 46.49, CGRectGetMinY(frame14) + 21.75) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 49.95, CGRectGetMinY(frame14) + 19.1) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 47.81, CGRectGetMinY(frame14) + 19.99)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 44.51, CGRectGetMinY(frame14) + 28.27) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 45.17, CGRectGetMinY(frame14) + 23.52) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 44.51, CGRectGetMinY(frame14) + 25.7)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 46.82, CGRectGetMinY(frame14) + 35.58) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 44.51, CGRectGetMinY(frame14) + 31.49) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 45.28, CGRectGetMinY(frame14) + 33.93)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 51.5, CGRectGetMinY(frame14) + 37.98) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 48.08, CGRectGetMinY(frame14) + 36.93) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 49.64, CGRectGetMinY(frame14) + 37.73)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 52.78, CGRectGetMinY(frame14) + 38.06) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 51.91, CGRectGetMinY(frame14) + 38.03) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 52.34, CGRectGetMinY(frame14) + 38.06)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 55.53, CGRectGetMinY(frame14) + 37.66) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 53.78, CGRectGetMinY(frame14) + 38.06) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 54.69, CGRectGetMinY(frame14) + 37.93)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 58.71, CGRectGetMinY(frame14) + 35.56) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 56.78, CGRectGetMinY(frame14) + 37.26) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 57.84, CGRectGetMinY(frame14) + 36.56)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 60.7, CGRectGetMinY(frame14) + 31.22) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 59.73, CGRectGetMinY(frame14) + 34.38) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 60.4, CGRectGetMinY(frame14) + 32.93)];
    [bezier4Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 64.01, CGRectGetMinY(frame14) + 31.22)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 61.81, CGRectGetMinY(frame14) + 36.9) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 63.73, CGRectGetMinY(frame14) + 33.45) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 62.99, CGRectGetMinY(frame14) + 35.34)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 52.59, CGRectGetMinY(frame14) + 40.86) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 59.81, CGRectGetMinY(frame14) + 39.54) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 56.74, CGRectGetMinY(frame14) + 40.86)];
    [bezier4Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame14) + 43.59, CGRectGetMinY(frame14) + 36.55) controlPoint1: CGPointMake(CGRectGetMinX(frame14) + 48.61, CGRectGetMinY(frame14) + 40.86) controlPoint2: CGPointMake(CGRectGetMinX(frame14) + 45.61, CGRectGetMinY(frame14) + 39.43)];
    [bezier4Path closePath];
    [fillColor setFill];
    [bezier4Path fill];
    
    
    //// Bezier 12 Drawing
    UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
    [bezier12Path moveToPoint: CGPointMake(CGRectGetMinX(frame14) + 76.84, CGRectGetMinY(frame14) + 27.06)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 86.87, CGRectGetMinY(frame14) + 41.65)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 82.73, CGRectGetMinY(frame14) + 41.65)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 74.53, CGRectGetMinY(frame14) + 29.39)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 70.78, CGRectGetMinY(frame14) + 33.13)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 70.78, CGRectGetMinY(frame14) + 41.65)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 67.68, CGRectGetMinY(frame14) + 41.65)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 67.68, CGRectGetMinY(frame14) + 17.22)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 70.78, CGRectGetMinY(frame14) + 17.22)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 70.78, CGRectGetMinY(frame14) + 29.12)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 82.21, CGRectGetMinY(frame14) + 17.22)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 86.6, CGRectGetMinY(frame14) + 17.22)];
    [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(frame14) + 76.84, CGRectGetMinY(frame14) + 27.06)];
    [bezier12Path closePath];
    [fillColor setFill];
    [bezier12Path fill];
    
    
    CGContextEndTransparencyLayer(context);
    CGContextRestoreGState(context);
    }
  }
  
  
}

@end
