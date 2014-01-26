//
//  CustomClumsyMainView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "CustomClumsyMainView.h"

@interface CustomClumsyMainView ()

@end

@implementation CustomClumsyMainView {
  int count;
}

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    count = 0;
    self.backgroundColor = [self backgroundColorAtIndex:count];
    count ++;
  }
  return self;
}

+ (id)viewWithFrame:(CGRect)frame {
  return [[CustomClumsyMainView alloc] initWithFrame:frame];
}

- (void)nextBackgroundColor {
  if (count >= 6) count = 0;
  [self setBackgroundColor:[self backgroundColorAtIndex:count]];
  count ++;
}

- (UIImage *)backgroundImageAtIndex:(int)index {
  UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0.0f);
  [self drawRect:self.frame atNumber:index];
  UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return result;
}

- (UIColor *)backgroundColorAtIndex:(int)index {
  return [UIColor colorWithPatternImage:[self backgroundImageAtIndex:index]];
}


- (void)drawRect:(CGRect)rect atNumber:(int)number {
  //// General Declarations
  CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
  CGContextRef context = UIGraphicsGetCurrentContext();
  NSArray *gradientColors;
  
  if (number == 0) {
    //// Color Declarations
    UIColor *gradient1Color1 = [UIColor colorWithRed: 1 green: 0.114 blue: 0.114 alpha: 1];
    UIColor *gradient1Color2 = [UIColor colorWithRed: 1 green: 0.43 blue: 0 alpha: 1];
    
    //// Gradient Declarations
    gradientColors = [NSArray arrayWithObjects:
                      (id)gradient1Color2.CGColor,
                      (id)[UIColor colorWithRed: 1 green: 0.272 blue: 0.057 alpha: 1].CGColor,
                      (id)gradient1Color1.CGColor,
                      (id)[UIColor colorWithRed: 1 green: 0.272 blue: 0.057 alpha: 1].CGColor,
                      (id)gradient1Color2.CGColor, nil];
  } else if (number == 1) {
    //// Color Declarations
    UIColor* gradient6Color1 = [UIColor colorWithRed: 0.794 green: 0.382 blue: 1 alpha: 1];
    UIColor* gradient6Color2 = [UIColor colorWithRed: 0.479 green: 0 blue: 0.718 alpha: 1];

    
    //// Gradient Declarations
    gradientColors = [NSArray arrayWithObjects:
                      (id)gradient6Color1.CGColor,
                      (id)[UIColor colorWithRed: 0.686 green: 0.171 blue: 0.943 alpha: 1].CGColor,
                      (id)gradient6Color2.CGColor,
                      (id)[UIColor colorWithRed: 0.686 green: 0.171 blue: 0.943 alpha: 1].CGColor,
                      (id)gradient6Color1.CGColor, nil];
    
    
  } else if (number == 2) {
    UIColor* gradient3Color1 = [UIColor colorWithRed: 0.99 green: 1 blue: 0 alpha: 1];
    UIColor* gradient3Color2 = [UIColor colorWithRed: 0.999 green: 0.734 blue: 0.155 alpha: 1];
    
    //// Gradient Declarations
    gradientColors = [NSArray arrayWithObjects:
                      (id)gradient3Color1.CGColor,
                      (id)[UIColor colorWithRed: 0.995 green: 0.867 blue: 0.078 alpha: 1].CGColor,
                      (id)gradient3Color2.CGColor,
                      (id)[UIColor colorWithRed: 0.995 green: 0.867 blue: 0.078 alpha: 1].CGColor,
                      (id)gradient3Color1.CGColor, nil];
  } else if (number == 3) {
    //// Color Declarations
    UIColor* gradient4Color1 = [UIColor colorWithRed: 0 green: 1 blue: 1 alpha: 1];
    UIColor* gradient4Color2 = [UIColor colorWithRed: 0 green: 0.097 blue: 1 alpha: 1];
    
    //// Gradient Declarations
    gradientColors = [NSArray arrayWithObjects:
                      (id)gradient4Color1.CGColor,
                      (id)[UIColor colorWithRed: 0 green: 0.548 blue: 1 alpha: 1].CGColor,
                      (id)gradient4Color2.CGColor,
                      (id)[UIColor colorWithRed: 0 green: 0.548 blue: 1 alpha: 1].CGColor,
                      (id)gradient4Color1.CGColor, nil];
  } else if (number == 4) {
    //// Color Declarations
    UIColor* gradient5Color1 = [UIColor colorWithRed: 1 green: 0 blue: 0.853 alpha: 1];
    UIColor* gradient5Color2 = [UIColor colorWithRed: 1 green: 0 blue: 0.447 alpha: 1];
    
    //// Gradient Declarations
    gradientColors = [NSArray arrayWithObjects:
                      (id)gradient5Color2.CGColor,
                      (id)[UIColor colorWithRed: 1 green: 0 blue: 0.65 alpha: 1].CGColor,
                      (id)gradient5Color1.CGColor,
                      (id)[UIColor colorWithRed: 1 green: 0 blue: 0.65 alpha: 1].CGColor,
                      (id)gradient5Color2.CGColor, nil];
  } else if (number == 5) {
    //// Color Declarations
    UIColor *gradient2Color1 = [UIColor colorWithRed: 0.062 green: 0.529 blue: 0 alpha: 1];
    UIColor *gradient2Color2 = [UIColor colorWithRed: 0.011 green: 0.908 blue: 0.011 alpha: 1];
    
    //// Gradient Declarations
    gradientColors = [NSArray arrayWithObjects:
                      (id)gradient2Color1.CGColor,
                      (id)[UIColor colorWithRed: 0.037 green: 0.719 blue: 0.005 alpha: 1].CGColor,
                      (id)gradient2Color2.CGColor,
                      (id)[UIColor colorWithRed: 0.037 green: 0.719 blue: 0.005 alpha: 1].CGColor,
                      (id)gradient2Color1.CGColor, nil];
    
  }
  
  CGFloat gradientLocations[] = {0, 0.2, 0.5, 0.8, 1};
  CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)gradientColors, gradientLocations);
  
  //// Abstracted Attributes
  CGRect mainScreenRect = self.bounds;
  
  //// MainScreen Drawing
  UIBezierPath* mainScreenPath = [UIBezierPath bezierPathWithRect: mainScreenRect];
  CGContextSaveGState(context);
  [mainScreenPath addClip];
  CGContextDrawLinearGradient(context, gradient, CGPointMake(160, 0), CGPointMake(160, self.frame.size.height), 0);
  CGContextRestoreGState(context);
  
  //// Cleanup
  CGGradientRelease(gradient);
  CGColorSpaceRelease(colorSpace);
  
}

@end
