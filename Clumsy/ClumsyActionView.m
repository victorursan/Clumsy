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
  CGRect firstContentRect = CGRectMake(CGRectGetMinX(frame), self.center.y, frame.size.width, 240);
  CGRect contentRect = CGRectMake(CGRectGetMinX(frame), self.center.y - 55, frame.size.width, 150);
  CGRect secondContentRect = CGRectMake(CGRectGetMinX(frame), frame.size.height/2 - 100, frame.size.width, 125);
  CGRect swipeDirection = CGRectMake(self.center.x-100,self.center.y+10, 200, 200);
  
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
    
    [@"Double" drawInRect:secondContentRect withAttributes:@{NSFontAttributeName:textFont,
                                                             NSParagraphStyleAttributeName:paragraphStyle,
                                                             NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [@"Tap" drawInRect:firstContentRect withAttributes:@{NSFontAttributeName:textFont,
                                                         NSParagraphStyleAttributeName:paragraphStyle,
                                                         NSForegroundColorAttributeName:[UIColor whiteColor]}];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Down"]) {
    
    //// Rectangle D Drawing
    UIBezierPath* rectangleDPath = [UIBezierPath bezierPath];
    [rectangleDPath moveToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 88.21, CGRectGetMinY(swipeDirection) + 100.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 88.21, CGRectGetMinY(swipeDirection) + 0.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 111.79, CGRectGetMinY(swipeDirection) + 0.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 111.79, CGRectGetMinY(swipeDirection) + 100.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 127.5, CGRectGetMinY(swipeDirection) + 100.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 100, CGRectGetMinY(swipeDirection) + 125.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 72.5, CGRectGetMinY(swipeDirection) + 100.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 88.21, CGRectGetMinY(swipeDirection) + 100.5)];
    [rectangleDPath closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [rectangleDPath fill];
    CGContextRestoreGState(context);
    
    [fillColor setStroke];
    rectangleDPath.lineWidth = 1;
    [rectangleDPath stroke];
    
    
    //// Swipe Down Drawing
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect:secondContentRect withAttributes:@{NSFontAttributeName:textFont,
                                                                NSParagraphStyleAttributeName:paragraphStyle,
                                                                NSForegroundColorAttributeName:[UIColor whiteColor] }];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Right"]) {
    
    //// Rectangle R Drawing
    UIBezierPath* rectangleRPath = [UIBezierPath bezierPath];
    [rectangleRPath moveToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 162.5, CGRectGetMinY(swipeDirection) + 28)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 131.25, CGRectGetMinY(swipeDirection) + 55)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 131.25, CGRectGetMinY(swipeDirection) + 40)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 37.5, CGRectGetMinY(swipeDirection) + 39.5)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 37.5, CGRectGetMinY(swipeDirection) + 15.5)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 131.25, CGRectGetMinY(swipeDirection) + 16)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 131.25, CGRectGetMinY(swipeDirection))];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 162.5, CGRectGetMinY(swipeDirection) + 28)];
    [rectangleRPath closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [rectangleRPath fill];
    CGContextRestoreGState(context);
    
    [fillColor setStroke];
    rectangleRPath.lineWidth = 1;
    [rectangleRPath stroke];
    
    
    //// Swipe Right Drawing
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect:secondContentRect withAttributes:@{NSFontAttributeName:textFont,
                                                                NSParagraphStyleAttributeName:paragraphStyle,
                                                                NSForegroundColorAttributeName:[UIColor whiteColor] }];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Left"]) {
    
    //// Rectangle L Drawing
    UIBezierPath* rectangleLPath = [UIBezierPath bezierPath];
    [rectangleLPath moveToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 35.5, CGRectGetMinY(swipeDirection) + 28)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 61.5, CGRectGetMinY(swipeDirection) + 55)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 61.5, CGRectGetMinY(swipeDirection) + 40)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 164.5, CGRectGetMinY(swipeDirection) + 40)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 164.5, CGRectGetMinY(swipeDirection) + 16)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 61.5, CGRectGetMinY(swipeDirection) + 16)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 61.5, CGRectGetMinY(swipeDirection))];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 35.5, CGRectGetMinY(swipeDirection) + 28)];
    [rectangleLPath closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [rectangleLPath fill];
    CGContextRestoreGState(context);
    
    [fillColor setStroke];
    rectangleLPath.lineWidth = 1;
    [rectangleLPath stroke];
    
    //// Swipe Left Drawing
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect:secondContentRect withAttributes:@{NSFontAttributeName:textFont,
                                                                NSParagraphStyleAttributeName:paragraphStyle,
                                                                NSForegroundColorAttributeName:[UIColor whiteColor] }];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Up"]) {
    
    UIBezierPath* rectangleUPath = [UIBezierPath bezierPath];
    [rectangleUPath moveToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 88.21, CGRectGetMinY(swipeDirection) + 26.11)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 88.21, CGRectGetMinY(swipeDirection) + 125.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 111.79, CGRectGetMinY(swipeDirection) + 125.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 111.79, CGRectGetMinY(swipeDirection) + 26.11)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 127.5, CGRectGetMinY(swipeDirection) + 26.11)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 100, CGRectGetMinY(swipeDirection) + 0.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 72.5, CGRectGetMinY(swipeDirection) + 26.11)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(swipeDirection) + 88.21, CGRectGetMinY(swipeDirection) + 26.11)];
    [rectangleUPath closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [rectangleUPath fill];
    CGContextRestoreGState(context);
    
    [fillColor setStroke];
    rectangleUPath.lineWidth = 1;
    [rectangleUPath stroke];
    
    
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect:secondContentRect withAttributes:@{NSFontAttributeName:textFont,
                                                                NSParagraphStyleAttributeName:paragraphStyle,
                                                                NSForegroundColorAttributeName:[UIColor whiteColor] }];
    CGContextRestoreGState(context);
    
  }
}


@end
