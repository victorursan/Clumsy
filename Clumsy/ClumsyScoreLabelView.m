//
//  ClumsyScoreLabelView.m
//  Clumsy
//
//  Created by Victor Ursan on 2/5/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreLabelView.h"

@interface ClumsyScoreLabelView ()

@property(strong, nonatomic) NSNumber *score;

@end

@implementation ClumsyScoreLabelView

- (id)initWithFrame:(CGRect)frame andScore:(NSNumber *)score {
    self = [super initWithFrame:frame];
    if (self) {
      self.backgroundColor = [UIColor clearColor];
      self.score = score;
    }
    return self;
}

+ (id)labelViewWithFrame:(CGRect)frame andScore:(NSNumber *)score {
  return [[ClumsyScoreLabelView alloc] initWithFrame:frame andScore:score];
}

- (void)drawRect:(CGRect)rect {
  //// General Declarations
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  //// Color Declarations
  UIColor* fillColor = [UIColor whiteColor];
  
  //// Shadow Declarations
  UIColor* textShadow = fillColor;
  CGSize textShadowOffset = CGSizeMake(0.1, -0.1);
  CGFloat textShadowBlurRadius = 5;
  
  //// Frames
  CGRect frame13 = CGRectMake(0, 0, 255, 60);
  
  
  //// Abstracted Attributes
  CGRect text7Rect = CGRectMake(CGRectGetMinX(frame13), CGRectGetMinY(frame13) + 5, 136, 51);
  NSString* text7Content = @"Score:";
  CGRect text9Rect = CGRectMake(CGRectGetMinX(frame13) + 136, CGRectGetMinY(frame13), 119, 60);
  NSString* text9Content = [NSString stringWithFormat:@"%@",self.score];
  
  //// Group 19
  {
  //// Text 7 Drawing
  NSMutableParagraphStyle* text7Style = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
  [text7Style setAlignment: NSTextAlignmentCenter];
  
  NSDictionary* text7FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 40], NSForegroundColorAttributeName: fillColor, NSParagraphStyleAttributeName: text7Style};
  
  [text7Content drawInRect: text7Rect withAttributes: text7FontAttributes];
  
  
  //// Text 9 Drawing
  CGContextSaveGState(context);
  CGContextSetShadowWithColor(context, textShadowOffset, textShadowBlurRadius, textShadow.CGColor);
  NSMutableParagraphStyle* text9Style = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
  [text9Style setAlignment: NSTextAlignmentLeft];
  
  NSDictionary* text9FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 50], NSForegroundColorAttributeName: fillColor, NSParagraphStyleAttributeName: text9Style};
  
  [text9Content drawInRect: text9Rect withAttributes: text9FontAttributes];
  CGContextRestoreGState(context);
  
  }
  
  
}

@end
