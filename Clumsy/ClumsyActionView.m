//
//  ClumsyActionView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/21/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyActionView.h"
#import "CustomUISwipeGesture.h"
#import "ClumsyActionObject.h"

@implementation ClumsyActionView

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor clearColor];
    self.actionObject = [ClumsyActionObject startClumsyObject];
  }
  return self;
}

+ (id)viewWithFrame:(CGRect)frame {
  return [[ClumsyActionView alloc] initWithFrame:frame];
}

- (void)setActionObject:(ClumsyActionObject *)actionObject {
  self.action = actionObject.text;
  self.backgroundColor = [UIColor colorWithPatternImage:[self imageForAction:self.action]];
}

- (UIImage *)imageForAction:(NSString *)action {
  UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0.0f);
  [self drawRectForAction:action];
  UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return result;
}

- (void)drawRectForAction:(NSString *)action {
  //// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  //// Color Declarations
  UIColor* fillColor = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Shadow Declarations
  UIColor* textShadow = fillColor;
  CGSize textShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat textShadowBlurRadius = 5;
  
  //// Frames
  CGRect frame = self.frame;
  CGRect swipeBezierRect = CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(frame) + (frame.size.height/2), 320, 240);
  CGRect contentRect = CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(frame) + ((frame.size.height/2) - 55), 320, 150);
  CGRect swipeRect = CGRectMake(CGRectGetMinX(frame), frame.size.height/2 - 100, 320, 125);
  
  //// Abstracted Attributes
  NSString *startContent = @"Start";
  NSString *shakeContent = @"Shake";
  NSString *tapContent   = @"Tap";
  NSString *swipeContent = @"Swipe";
  NSString *doubleTap    = @"Double Tap";
  
  UIFont *textFont = [UIFont fontWithName: @"Helvetica" size: 90];
  
  NSMutableParagraphStyle *paragraphStyle = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
  paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
  paragraphStyle.alignment = NSTextAlignmentCenter;
  
  if ([action isEqualToString:startContent] || [action isEqualToString:shakeContent] || [action isEqualToString:tapContent]) {
    
    //// Start Drawing
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    
    [action drawInRect:contentRect withAttributes:@{NSFontAttributeName:textFont,
                                          NSParagraphStyleAttributeName:paragraphStyle,
                                         NSForegroundColorAttributeName:[UIColor whiteColor]}];
    CGContextRestoreGState(context);
  
  } else if ([action isEqualToString:doubleTap]) {
    
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];

    [@"Double" drawInRect:swipeRect withAttributes:@{NSFontAttributeName:textFont,
                                           NSParagraphStyleAttributeName:paragraphStyle,
                                          NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [@"Tap" drawInRect:swipeBezierRect withAttributes:@{NSFontAttributeName:textFont,
                                              NSParagraphStyleAttributeName:paragraphStyle,
                                             NSForegroundColorAttributeName:[UIColor whiteColor]}];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Down"]) {
    {
      //// Rectangle D Drawing
      UIBezierPath* rectangleDPath = [UIBezierPath bezierPath];
      [rectangleDPath moveToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 148.21, CGRectGetMinY(swipeBezierRect) + 104.5)];
      [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 148.21, CGRectGetMinY(swipeBezierRect) + 4.5)];
      [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 171.79, CGRectGetMinY(swipeBezierRect) + 4.5)];
      [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 171.79, CGRectGetMinY(swipeBezierRect) + 104.5)];
      [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 187.5, CGRectGetMinY(swipeBezierRect) + 104.5)];
      [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 160, CGRectGetMinY(swipeBezierRect) + 129.5)];
      [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 132.5, CGRectGetMinY(swipeBezierRect) + 104.5)];
      [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 148.21, CGRectGetMinY(swipeBezierRect) + 104.5)];
      [rectangleDPath closePath];
      CGContextSaveGState(context);
      CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
      [fillColor setFill];
      [rectangleDPath fill];
      CGContextRestoreGState(context);
      
      [fillColor setStroke];
      rectangleDPath.lineWidth = 1;
      [rectangleDPath stroke];
    }
    
    //// Swipe Down Drawing
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect:swipeRect withAttributes:@{NSFontAttributeName:textFont,
                                                        NSParagraphStyleAttributeName:paragraphStyle,
                                                        NSForegroundColorAttributeName:[UIColor whiteColor] }];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Right"]) {
    {
      //// Rectangle R Drawing
      UIBezierPath* rectangleRPath = [UIBezierPath bezierPath];
      [rectangleRPath moveToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 222.5, CGRectGetMinY(swipeBezierRect) + 35)];
      [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 191.25, CGRectGetMinY(swipeBezierRect) + 62)];
      [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 191.25, CGRectGetMinY(swipeBezierRect) + 47)];
      [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 97.5, CGRectGetMinY(swipeBezierRect) + 46.5)];
      [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 97.5, CGRectGetMinY(swipeBezierRect) + 22.5)];
      [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 191.25, CGRectGetMinY(swipeBezierRect) + 23)];
      [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 191.25, CGRectGetMinY(swipeBezierRect) + 7)];
      [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 222.5, CGRectGetMinY(swipeBezierRect) + 35)];
      [rectangleRPath closePath];
      CGContextSaveGState(context);
      CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
      [fillColor setFill];
      [rectangleRPath fill];
      CGContextRestoreGState(context);
      
      [fillColor setStroke];
      rectangleRPath.lineWidth = 1;
      [rectangleRPath stroke];
    }    
    
    
    //// Swipe Right Drawing
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect:swipeRect withAttributes:@{NSFontAttributeName:textFont,
                                                        NSParagraphStyleAttributeName:paragraphStyle,
                                                        NSForegroundColorAttributeName:[UIColor whiteColor] }];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Left"]) {
    {
      //// Rectangle L Drawing
      UIBezierPath* rectangleLPath = [UIBezierPath bezierPath];
      [rectangleLPath moveToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 97.5, CGRectGetMinY(swipeBezierRect) + 35)];
      [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 123.5, CGRectGetMinY(swipeBezierRect) + 62)];
      [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 123.5, CGRectGetMinY(swipeBezierRect) + 47)];
      [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 222.5, CGRectGetMinY(swipeBezierRect) + 47)];
      [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 222.5, CGRectGetMinY(swipeBezierRect) + 23)];
      [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 123.5, CGRectGetMinY(swipeBezierRect) + 23)];
      [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 123.5, CGRectGetMinY(swipeBezierRect) + 7)];
      [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 97.5, CGRectGetMinY(swipeBezierRect) + 35)];
      [rectangleLPath closePath];
      CGContextSaveGState(context);
      CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
      [fillColor setFill];
      [rectangleLPath fill];
      CGContextRestoreGState(context);
      
      [fillColor setStroke];
      rectangleLPath.lineWidth = 1;
      [rectangleLPath stroke];
    }
    //// Swipe Left Drawing
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect:swipeRect withAttributes:@{NSFontAttributeName:textFont,
                                                        NSParagraphStyleAttributeName:paragraphStyle,
                                                        NSForegroundColorAttributeName:[UIColor whiteColor] }];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Up"]) {
    {
      //// Rectangle U Drawing
      UIBezierPath* rectangleUPath = [UIBezierPath bezierPath];
      [rectangleUPath moveToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 148.21, CGRectGetMinY(swipeBezierRect) + 30.11)];
      [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 148.21, CGRectGetMinY(swipeBezierRect) + 129.5)];
      [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 171.79, CGRectGetMinY(swipeBezierRect) + 129.5)];
      [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 171.79, CGRectGetMinY(swipeBezierRect) + 30.11)];
      [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 187.5, CGRectGetMinY(swipeBezierRect) + 30.11)];
      [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 160, CGRectGetMinY(swipeBezierRect) + 4.5)];
      [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 132.5, CGRectGetMinY(swipeBezierRect) + 30.11)];
      [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeBezierRect) + 148.21, CGRectGetMinY(swipeBezierRect) + 30.11)];
      [rectangleUPath closePath];
      CGContextSaveGState(context);
      CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
      [fillColor setFill];
      [rectangleUPath fill];
      CGContextRestoreGState(context);
      
      [fillColor setStroke];
      rectangleUPath.lineWidth = 1;
      [rectangleUPath stroke];
    }
    
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect:swipeRect withAttributes:@{NSFontAttributeName:textFont,
                                                        NSParagraphStyleAttributeName:paragraphStyle,
                                                        NSForegroundColorAttributeName:[UIColor whiteColor] }];
    CGContextRestoreGState(context);
    
  }
}


@end
