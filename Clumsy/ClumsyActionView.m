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

@interface ClumsyActionView ()

//@property(strong, nonatomic) NSDictionary *allViewsForObjects;

@end

@implementation ClumsyActionView

- (id)initWithPoint:(CGPoint)point {
  self = [super initWithFrame:CGRectMake(point.x, point.y, 320, 480)];
  if (self) {
    self.backgroundColor = [UIColor clearColor];
    self.actionObject = [ClumsyActionObject startClumsyObject];
  }
  return self;
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
  CGRect frame3 = CGRectMake(0, 0, 319, 480);
  
  
  //// Abstracted Attributes
  NSString *startContent = @"Start";
  NSString *shakeContent = @"Shake";
  NSString *pressContent = @"Press";
  NSString *swipeContent = @"Swipe";
  
  //// Group
  if ([action isEqualToString:@"Start"]) {
    
    //// Start Drawing
    CGRect startRect = CGRectMake(CGRectGetMinX(frame3), CGRectGetMinY(frame3) + 165, 320, 150);
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [startContent drawInRect: startRect withFont: [UIFont fontWithName: @"Helvetica" size: 90] lineBreakMode: NSLineBreakByWordWrapping alignment: NSTextAlignmentCenter];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Shake"]) {
    
    //// Shake Drawing
    CGRect shakeRect = CGRectMake(CGRectGetMinX(frame3), CGRectGetMinY(frame3) + 165, 320, 150);
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [shakeContent drawInRect: shakeRect withFont: [UIFont fontWithName: @"Helvetica" size: 90] lineBreakMode: NSLineBreakByWordWrapping alignment: NSTextAlignmentCenter];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Press"]) {
    
    //// Press Drawing
    CGRect pressRect = CGRectMake(CGRectGetMinX(frame3), CGRectGetMinY(frame3) + 165, 320, 150);
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [pressContent drawInRect: pressRect withFont: [UIFont fontWithName: @"Helvetica" size: 90] lineBreakMode: NSLineBreakByWordWrapping alignment: NSTextAlignmentCenter];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Down"]) {
    //// Rectangle D Drawing
    UIBezierPath* rectangleDPath = [UIBezierPath bezierPath];
    [rectangleDPath moveToPoint: CGPointMake(CGRectGetMinX(frame3) + 147.5, CGRectGetMinY(frame3) + 355.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 147.5, CGRectGetMinY(frame3) + 255.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 171.5, CGRectGetMinY(frame3) + 255.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 171.5, CGRectGetMinY(frame3) + 355.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 187.5, CGRectGetMinY(frame3) + 355.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 159.5, CGRectGetMinY(frame3) + 380.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 131.5, CGRectGetMinY(frame3) + 355.5)];
    [rectangleDPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 147.5, CGRectGetMinY(frame3) + 355.5)];
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
    CGRect swipeDownRect = CGRectMake(CGRectGetMinX(frame3), CGRectGetMinY(frame3) + 130, 320, 125);
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect: swipeDownRect withFont: [UIFont fontWithName: @"Helvetica" size: 90] lineBreakMode: NSLineBreakByWordWrapping alignment: NSTextAlignmentCenter];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Right"]) {
    //// Rectangle R Drawing
    UIBezierPath* rectangleRPath = [UIBezierPath bezierPath];
    [rectangleRPath moveToPoint: CGPointMake(CGRectGetMinX(frame3) + 222.5, CGRectGetMinY(frame3) + 283)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 196.5, CGRectGetMinY(frame3) + 310)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 196.5, CGRectGetMinY(frame3) + 295)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 97.5, CGRectGetMinY(frame3) + 295)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 97.5, CGRectGetMinY(frame3) + 271)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 196.5, CGRectGetMinY(frame3) + 271)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 196.5, CGRectGetMinY(frame3) + 255)];
    [rectangleRPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 222.5, CGRectGetMinY(frame3) + 283)];
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
    CGRect swipeRightRect = CGRectMake(CGRectGetMinX(frame3), CGRectGetMinY(frame3) + 130, 320, 125);
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect: swipeRightRect withFont: [UIFont fontWithName: @"Helvetica" size: 90] lineBreakMode: NSLineBreakByWordWrapping alignment: NSTextAlignmentCenter];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Left"]) {
    //// Rectangle L Drawing
    UIBezierPath* rectangleLPath = [UIBezierPath bezierPath];
    [rectangleLPath moveToPoint: CGPointMake(CGRectGetMinX(frame3) + 97.5, CGRectGetMinY(frame3) + 283)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 123.5, CGRectGetMinY(frame3) + 310)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 123.5, CGRectGetMinY(frame3) + 295)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 222.5, CGRectGetMinY(frame3) + 295)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 222.5, CGRectGetMinY(frame3) + 271)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 123.5, CGRectGetMinY(frame3) + 271)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 123.5, CGRectGetMinY(frame3) + 255)];
    [rectangleLPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 97.5, CGRectGetMinY(frame3) + 283)];
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
    CGRect swipeLeftRect = CGRectMake(CGRectGetMinX(frame3), CGRectGetMinY(frame3) + 130, 320, 125);
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect: swipeLeftRect withFont: [UIFont fontWithName: @"Helvetica" size: 90] lineBreakMode: NSLineBreakByWordWrapping alignment: NSTextAlignmentCenter];
    CGContextRestoreGState(context);
    
  } else if ([action isEqualToString:@"Swipe Up"]) {
    //// Rectangle U Drawing
    UIBezierPath* rectangleUPath = [UIBezierPath bezierPath];
    [rectangleUPath moveToPoint: CGPointMake(CGRectGetMinX(frame3) + 147.5, CGRectGetMinY(frame3) + 280.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 147.5, CGRectGetMinY(frame3) + 380.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 171.5, CGRectGetMinY(frame3) + 380.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 171.5, CGRectGetMinY(frame3) + 280.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 187.5, CGRectGetMinY(frame3) + 280.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 159.5, CGRectGetMinY(frame3) + 255.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 131.5, CGRectGetMinY(frame3) + 280.5)];
    [rectangleUPath addLineToPoint: CGPointMake(CGRectGetMinX(frame3) + 147.5, CGRectGetMinY(frame3) + 280.5)];
    [rectangleUPath closePath];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [rectangleUPath fill];
    CGContextRestoreGState(context);
    
    [fillColor setStroke];
    rectangleUPath.lineWidth = 1;
    [rectangleUPath stroke];
    
    CGRect swipeUpRect = CGRectMake(CGRectGetMinX(frame3), CGRectGetMinY(frame3) + 130, 320, 125);
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
    [fillColor setFill];
    [swipeContent drawInRect: swipeUpRect withFont: [UIFont fontWithName: @"Helvetica" size: 90] lineBreakMode: NSLineBreakByWordWrapping alignment: NSTextAlignmentCenter];
    CGContextRestoreGState(context);
    
  }
}


@end
