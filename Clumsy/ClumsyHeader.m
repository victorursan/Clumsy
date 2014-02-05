//
//  ClumsyHeader.m
//  Clumsy
//
//  Created by Victor Ursan on 2/5/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import "ClumsyHeader.h"

@implementation ClumsyHeader

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor clearColor];
  }
  return self;
}

+ (id)titleWithFrame:(CGRect)frame {
  return  [[ClumsyHeader alloc] initWithFrame:frame];
}

- (void)drawRect:(CGRect)rect {
  //// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  //// Color Declarations
  UIColor* fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  UIColor* color14 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Shadow Declarations
  UIColor* textShadow = fillColor;
  CGSize textShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat textShadowBlurRadius = 5;
  UIColor* shadow5 = [fillColor colorWithAlphaComponent: 0.17];
  CGSize shadow5Offset = CGSizeMake(-10.1, 15.1);
  CGFloat shadow5BlurRadius = 2.5;
  
  //// Frames
  CGRect frame5 = CGRectMake(0, 0, 300, 85);
  
  
  //// Clumsy Header
  {
  //// Text 3 Drawing
  UIBezierPath* text3Path = [UIBezierPath bezierPath];
  [text3Path moveToPoint: CGPointMake(CGRectGetMinX(frame5) + 22.13, CGRectGetMinY(frame5) + 15.88)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 37.79, CGRectGetMinY(frame5) + 9.66) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 26.24, CGRectGetMinY(frame5) + 11.74) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 31.45, CGRectGetMinY(frame5) + 9.66)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 56.38, CGRectGetMinY(frame5) + 18) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 46.26, CGRectGetMinY(frame5) + 9.66) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 52.46, CGRectGetMinY(frame5) + 12.44)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 59.87, CGRectGetMinY(frame5) + 27.4) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 58.55, CGRectGetMinY(frame5) + 21.12) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 59.71, CGRectGetMinY(frame5) + 24.26)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 49.34, CGRectGetMinY(frame5) + 27.4)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 46.71, CGRectGetMinY(frame5) + 21.93) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 48.66, CGRectGetMinY(frame5) + 24.99) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 47.78, CGRectGetMinY(frame5) + 23.16)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 38.2, CGRectGetMinY(frame5) + 18.65) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 44.79, CGRectGetMinY(frame5) + 19.75) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 41.96, CGRectGetMinY(frame5) + 18.65)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 29.14, CGRectGetMinY(frame5) + 23.28) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 34.37, CGRectGetMinY(frame5) + 18.65) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 31.35, CGRectGetMinY(frame5) + 20.2)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 25.83, CGRectGetMinY(frame5) + 36.39) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 26.93, CGRectGetMinY(frame5) + 26.37) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 25.83, CGRectGetMinY(frame5) + 30.74)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 29.33, CGRectGetMinY(frame5) + 49.09) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 25.83, CGRectGetMinY(frame5) + 42.04) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 26.99, CGRectGetMinY(frame5) + 46.27)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 38.23, CGRectGetMinY(frame5) + 53.31) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 31.66, CGRectGetMinY(frame5) + 51.9) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 34.63, CGRectGetMinY(frame5) + 53.31)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 46.67, CGRectGetMinY(frame5) + 49.69) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 41.92, CGRectGetMinY(frame5) + 53.31) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 44.74, CGRectGetMinY(frame5) + 52.1)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 49.34, CGRectGetMinY(frame5) + 43.84) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 47.75, CGRectGetMinY(frame5) + 48.39) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 48.63, CGRectGetMinY(frame5) + 46.44)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 59.77, CGRectGetMinY(frame5) + 43.84)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 52.78, CGRectGetMinY(frame5) + 57.24) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 58.85, CGRectGetMinY(frame5) + 49.33) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 56.52, CGRectGetMinY(frame5) + 53.8)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 38.37, CGRectGetMinY(frame5) + 62.4) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 49.03, CGRectGetMinY(frame5) + 60.68) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 44.23, CGRectGetMinY(frame5) + 62.4)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 21.28, CGRectGetMinY(frame5) + 55.43) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 31.12, CGRectGetMinY(frame5) + 62.4) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 25.43, CGRectGetMinY(frame5) + 60.08)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 15.06, CGRectGetMinY(frame5) + 36.22) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 17.13, CGRectGetMinY(frame5) + 50.76) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 15.06, CGRectGetMinY(frame5) + 44.35)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 22.13, CGRectGetMinY(frame5) + 15.88) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 15.06, CGRectGetMinY(frame5) + 27.42) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 17.42, CGRectGetMinY(frame5) + 20.65)];
  [text3Path closePath];
  [text3Path moveToPoint: CGPointMake(CGRectGetMinX(frame5) + 76.96, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 67.22, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 67.22, CGRectGetMinY(frame5) + 10.62)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 76.96, CGRectGetMinY(frame5) + 10.62)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 76.96, CGRectGetMinY(frame5) + 61)];
  [text3Path closePath];
  [text3Path moveToPoint: CGPointMake(CGRectGetMinX(frame5) + 96.17, CGRectGetMinY(frame5) + 23.74)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 96.17, CGRectGetMinY(frame5) + 46.2)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 96.92, CGRectGetMinY(frame5) + 50.99) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 96.17, CGRectGetMinY(frame5) + 48.32) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 96.42, CGRectGetMinY(frame5) + 49.91)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 102.15, CGRectGetMinY(frame5) + 53.82) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 97.81, CGRectGetMinY(frame5) + 52.88) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 99.55, CGRectGetMinY(frame5) + 53.82)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 108.98, CGRectGetMinY(frame5) + 49.79) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 105.48, CGRectGetMinY(frame5) + 53.82) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 107.75, CGRectGetMinY(frame5) + 52.48)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 109.94, CGRectGetMinY(frame5) + 44.01) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 109.62, CGRectGetMinY(frame5) + 48.33) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 109.94, CGRectGetMinY(frame5) + 46.41)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 109.94, CGRectGetMinY(frame5) + 23.74)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 119.82, CGRectGetMinY(frame5) + 23.74)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 119.82, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 110.35, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 110.35, CGRectGetMinY(frame5) + 55.74)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 109.67, CGRectGetMinY(frame5) + 56.76) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 110.26, CGRectGetMinY(frame5) + 55.85) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 110.03, CGRectGetMinY(frame5) + 56.19)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 108.37, CGRectGetMinY(frame5) + 58.27) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 109.3, CGRectGetMinY(frame5) + 57.33) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 108.87, CGRectGetMinY(frame5) + 57.83)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 103.94, CGRectGetMinY(frame5) + 61.07) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 106.84, CGRectGetMinY(frame5) + 59.63) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 105.37, CGRectGetMinY(frame5) + 60.57)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 98.94, CGRectGetMinY(frame5) + 61.82) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 102.52, CGRectGetMinY(frame5) + 61.57) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 100.85, CGRectGetMinY(frame5) + 61.82)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 87.79, CGRectGetMinY(frame5) + 55.87) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 93.42, CGRectGetMinY(frame5) + 61.82) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 89.71, CGRectGetMinY(frame5) + 59.84)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 86.19, CGRectGetMinY(frame5) + 46.2) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 86.72, CGRectGetMinY(frame5) + 53.69) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 86.19, CGRectGetMinY(frame5) + 50.46)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 86.19, CGRectGetMinY(frame5) + 23.74)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 96.17, CGRectGetMinY(frame5) + 23.74)];
  [text3Path closePath];
  [text3Path moveToPoint: CGPointMake(CGRectGetMinX(frame5) + 175.7, CGRectGetMinY(frame5) + 23.88)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 180.04, CGRectGetMinY(frame5) + 27.23) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 177.3, CGRectGetMinY(frame5) + 24.52) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 178.75, CGRectGetMinY(frame5) + 25.64)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 182.16, CGRectGetMinY(frame5) + 32.02) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 181.09, CGRectGetMinY(frame5) + 28.53) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 181.8, CGRectGetMinY(frame5) + 30.12)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 182.5, CGRectGetMinY(frame5) + 37.52) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 182.39, CGRectGetMinY(frame5) + 33.27) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 182.5, CGRectGetMinY(frame5) + 35.1)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 182.44, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 172.46, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 172.46, CGRectGetMinY(frame5) + 37.28)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 171.77, CGRectGetMinY(frame5) + 33.79) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 172.46, CGRectGetMinY(frame5) + 35.87) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 172.23, CGRectGetMinY(frame5) + 34.7)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 166.99, CGRectGetMinY(frame5) + 31.2) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 170.91, CGRectGetMinY(frame5) + 32.06) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 169.31, CGRectGetMinY(frame5) + 31.2)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 161.42, CGRectGetMinY(frame5) + 34.54) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 164.3, CGRectGetMinY(frame5) + 31.2) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 162.44, CGRectGetMinY(frame5) + 32.31)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 160.63, CGRectGetMinY(frame5) + 38.82) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 160.89, CGRectGetMinY(frame5) + 35.73) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 160.63, CGRectGetMinY(frame5) + 37.15)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 160.63, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 150.82, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 150.82, CGRectGetMinY(frame5) + 38.82)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 150.14, CGRectGetMinY(frame5) + 34) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 150.82, CGRectGetMinY(frame5) + 36.61) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 150.59, CGRectGetMinY(frame5) + 35)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 145.32, CGRectGetMinY(frame5) + 31.3) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 149.32, CGRectGetMinY(frame5) + 32.2) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 147.71, CGRectGetMinY(frame5) + 31.3)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 139.71, CGRectGetMinY(frame5) + 34) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 142.54, CGRectGetMinY(frame5) + 31.3) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 140.67, CGRectGetMinY(frame5) + 32.2)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 138.93, CGRectGetMinY(frame5) + 38.58) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 139.19, CGRectGetMinY(frame5) + 35.02) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 138.93, CGRectGetMinY(frame5) + 36.55)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 138.93, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 129.05, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 129.05, CGRectGetMinY(frame5) + 23.81)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 138.52, CGRectGetMinY(frame5) + 23.81)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 138.52, CGRectGetMinY(frame5) + 29.25)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 141.93, CGRectGetMinY(frame5) + 25.11) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 139.72, CGRectGetMinY(frame5) + 27.31) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 140.86, CGRectGetMinY(frame5) + 25.93)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 149.28, CGRectGetMinY(frame5) + 22.92) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 143.82, CGRectGetMinY(frame5) + 23.65) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 146.27, CGRectGetMinY(frame5) + 22.92)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 156.19, CGRectGetMinY(frame5) + 24.8) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 152.13, CGRectGetMinY(frame5) + 22.92) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 154.43, CGRectGetMinY(frame5) + 23.55)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 159.4, CGRectGetMinY(frame5) + 29.28) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 157.6, CGRectGetMinY(frame5) + 25.97) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 158.67, CGRectGetMinY(frame5) + 27.46)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 164.15, CGRectGetMinY(frame5) + 24.46) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 160.68, CGRectGetMinY(frame5) + 27.09) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 162.26, CGRectGetMinY(frame5) + 25.49)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 170.85, CGRectGetMinY(frame5) + 22.92) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 166.16, CGRectGetMinY(frame5) + 23.44) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 168.39, CGRectGetMinY(frame5) + 22.92)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 175.7, CGRectGetMinY(frame5) + 23.88) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 172.49, CGRectGetMinY(frame5) + 22.92) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 174.11, CGRectGetMinY(frame5) + 23.24)];
  [text3Path closePath];
  [text3Path moveToPoint: CGPointMake(CGRectGetMinX(frame5) + 199.05, CGRectGetMinY(frame5) + 49.11)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 200.38, CGRectGetMinY(frame5) + 52.8) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 199.25, CGRectGetMinY(frame5) + 50.84) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 199.7, CGRectGetMinY(frame5) + 52.07)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 207.08, CGRectGetMinY(frame5) + 54.75) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 201.59, CGRectGetMinY(frame5) + 54.1) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 203.82, CGRectGetMinY(frame5) + 54.75)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 211.64, CGRectGetMinY(frame5) + 53.89) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 208.99, CGRectGetMinY(frame5) + 54.75) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 210.52, CGRectGetMinY(frame5) + 54.46)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 213.33, CGRectGetMinY(frame5) + 51.33) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 212.77, CGRectGetMinY(frame5) + 53.32) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 213.33, CGRectGetMinY(frame5) + 52.47)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 211.97, CGRectGetMinY(frame5) + 48.83) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 213.33, CGRectGetMinY(frame5) + 50.23) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 212.88, CGRectGetMinY(frame5) + 49.4)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 201.82, CGRectGetMinY(frame5) + 45.89) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 211.06, CGRectGetMinY(frame5) + 48.26) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 207.67, CGRectGetMinY(frame5) + 47.28)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 192.9, CGRectGetMinY(frame5) + 41.96) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 197.6, CGRectGetMinY(frame5) + 44.84) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 194.63, CGRectGetMinY(frame5) + 43.53)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 190.3, CGRectGetMinY(frame5) + 35.26) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 191.16, CGRectGetMinY(frame5) + 40.41) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 190.3, CGRectGetMinY(frame5) + 38.18)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 194.35, CGRectGetMinY(frame5) + 26.39) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 190.3, CGRectGetMinY(frame5) + 31.82) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 191.65, CGRectGetMinY(frame5) + 28.87)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 205.75, CGRectGetMinY(frame5) + 22.68) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 197.05, CGRectGetMinY(frame5) + 23.92) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 200.85, CGRectGetMinY(frame5) + 22.68)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 217.11, CGRectGetMinY(frame5) + 25.47) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 210.4, CGRectGetMinY(frame5) + 22.68) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 214.18, CGRectGetMinY(frame5) + 23.61)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 222.15, CGRectGetMinY(frame5) + 35.09) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 220.04, CGRectGetMinY(frame5) + 27.33) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 221.72, CGRectGetMinY(frame5) + 30.53)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 212.41, CGRectGetMinY(frame5) + 35.09)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 211.35, CGRectGetMinY(frame5) + 32.12) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 212.28, CGRectGetMinY(frame5) + 33.84) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 211.92, CGRectGetMinY(frame5) + 32.85)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 205.88, CGRectGetMinY(frame5) + 30.14) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 210.28, CGRectGetMinY(frame5) + 30.8) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 208.46, CGRectGetMinY(frame5) + 30.14)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 201.35, CGRectGetMinY(frame5) + 31.13) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 203.76, CGRectGetMinY(frame5) + 30.14) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 202.26, CGRectGetMinY(frame5) + 30.47)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 200, CGRectGetMinY(frame5) + 33.45) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 200.45, CGRectGetMinY(frame5) + 31.79) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 200, CGRectGetMinY(frame5) + 32.56)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 201.44, CGRectGetMinY(frame5) + 35.88) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 200, CGRectGetMinY(frame5) + 34.57) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 200.48, CGRectGetMinY(frame5) + 35.38)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 211.59, CGRectGetMinY(frame5) + 38.58) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 202.4, CGRectGetMinY(frame5) + 36.4) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 205.78, CGRectGetMinY(frame5) + 37.3)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 220.31, CGRectGetMinY(frame5) + 42.71) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 215.47, CGRectGetMinY(frame5) + 39.49) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 218.37, CGRectGetMinY(frame5) + 40.87)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 223.18, CGRectGetMinY(frame5) + 49.72) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 222.22, CGRectGetMinY(frame5) + 44.58) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 223.18, CGRectGetMinY(frame5) + 46.92)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 219.06, CGRectGetMinY(frame5) + 58.76) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 223.18, CGRectGetMinY(frame5) + 53.41) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 221.81, CGRectGetMinY(frame5) + 56.43)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 206.33, CGRectGetMinY(frame5) + 62.26) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 216.31, CGRectGetMinY(frame5) + 61.1) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 212.07, CGRectGetMinY(frame5) + 62.26)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 193.36, CGRectGetMinY(frame5) + 58.56) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 200.47, CGRectGetMinY(frame5) + 62.26) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 196.15, CGRectGetMinY(frame5) + 61.03)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 189.17, CGRectGetMinY(frame5) + 49.11) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 190.57, CGRectGetMinY(frame5) + 56.08) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 189.17, CGRectGetMinY(frame5) + 52.93)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 199.05, CGRectGetMinY(frame5) + 49.11)];
  [text3Path closePath];
  [text3Path moveToPoint: CGPointMake(CGRectGetMinX(frame5) + 231.89, CGRectGetMinY(frame5) + 68.14)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 233.12, CGRectGetMinY(frame5) + 68.21)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 235.86, CGRectGetMinY(frame5) + 68.11) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 234.08, CGRectGetMinY(frame5) + 68.26) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 234.99, CGRectGetMinY(frame5) + 68.22)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 238.05, CGRectGetMinY(frame5) + 67.32) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 236.73, CGRectGetMinY(frame5) + 68) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 237.45, CGRectGetMinY(frame5) + 67.73)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 239.64, CGRectGetMinY(frame5) + 64.9) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 238.62, CGRectGetMinY(frame5) + 66.94) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 239.15, CGRectGetMinY(frame5) + 66.13)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 240.23, CGRectGetMinY(frame5) + 62.64) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 240.13, CGRectGetMinY(frame5) + 63.67) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 240.33, CGRectGetMinY(frame5) + 62.91)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 226.56, CGRectGetMinY(frame5) + 23.74)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 237.4, CGRectGetMinY(frame5) + 23.74)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 245.53, CGRectGetMinY(frame5) + 51.22)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 253.22, CGRectGetMinY(frame5) + 23.74)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 263.58, CGRectGetMinY(frame5) + 23.74)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 250.8, CGRectGetMinY(frame5) + 60.38)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 244.95, CGRectGetMinY(frame5) + 73.53) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 248.33, CGRectGetMinY(frame5) + 67.45) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 246.39, CGRectGetMinY(frame5) + 71.83)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 236.34, CGRectGetMinY(frame5) + 76.07) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 243.52, CGRectGetMinY(frame5) + 75.22) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 240.64, CGRectGetMinY(frame5) + 76.07)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 234.25, CGRectGetMinY(frame5) + 76.06) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 235.47, CGRectGetMinY(frame5) + 76.07) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 234.78, CGRectGetMinY(frame5) + 76.07)];
  [text3Path addCurveToPoint: CGPointMake(CGRectGetMinX(frame5) + 231.89, CGRectGetMinY(frame5) + 75.94) controlPoint1: CGPointMake(CGRectGetMinX(frame5) + 233.73, CGRectGetMinY(frame5) + 76.04) controlPoint2: CGPointMake(CGRectGetMinX(frame5) + 232.94, CGRectGetMinY(frame5) + 76)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 231.89, CGRectGetMinY(frame5) + 68.14)];
  [text3Path closePath];
  [text3Path moveToPoint: CGPointMake(CGRectGetMinX(frame5) + 272.47, CGRectGetMinY(frame5) + 10.79)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 283.16, CGRectGetMinY(frame5) + 10.79)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 283.16, CGRectGetMinY(frame5) + 23.57)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 280.4, CGRectGetMinY(frame5) + 47.09)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 275.3, CGRectGetMinY(frame5) + 47.09)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 272.47, CGRectGetMinY(frame5) + 23.57)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 272.47, CGRectGetMinY(frame5) + 10.79)];
  [text3Path closePath];
  [text3Path moveToPoint: CGPointMake(CGRectGetMinX(frame5) + 272.71, CGRectGetMinY(frame5) + 51.12)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 282.89, CGRectGetMinY(frame5) + 51.12)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 282.89, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 272.71, CGRectGetMinY(frame5) + 61)];
  [text3Path addLineToPoint: CGPointMake(CGRectGetMinX(frame5) + 272.71, CGRectGetMinY(frame5) + 51.12)];
  [text3Path closePath];
  text3Path.miterLimit = 0;
  
  text3Path.lineCapStyle = kCGLineCapRound;
  
  text3Path.lineJoinStyle = kCGLineJoinRound;
  
  CGContextSaveGState(context);
  CGContextSetShadowWithColor(context, shadow5Offset, shadow5BlurRadius, shadow5.CGColor);
  CGContextRestoreGState(context);
  
  CGContextSaveGState(context);
  CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
  [color14 setStroke];
  text3Path.lineWidth = 3.5;
  [text3Path stroke];
  CGContextRestoreGState(context);
  }
  
  
  
}

@end
