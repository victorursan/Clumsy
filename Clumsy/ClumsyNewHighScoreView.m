//
//  ClumsyNewHighScoreView.m
//  Clumsy
//
//  Created by Victor Ursan on 2/5/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import "ClumsyNewHighScoreView.h"

@interface ClumsyNewHighScoreView ()

@property BOOL isNew;

@end

@implementation ClumsyNewHighScoreView

- (id)initWithFrame:(CGRect)frame newHighScore:(BOOL)isNew {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor clearColor];
    self.isNew = isNew;
  }
  return self;
}

+ (id)highscoreWithFrame:(CGRect)frame new:(BOOL)isNew {
  return [[ClumsyNewHighScoreView alloc] initWithFrame:frame newHighScore:isNew];
}

- (void)drawRect:(CGRect)rect {
  //// Color Declarations
  UIColor* color11 = [UIColor colorWithRed: 1 green: 1 blue: 0.114 alpha: 1];
  UIColor* color18 = [UIColor colorWithRed: 0.286 green: 0.286 blue: 0.286 alpha: 0.456];
  
  //// Shadow Declarations
  UIColor* shadow4 = color11;
  CGSize shadow4Offset = CGSizeMake(0.1, -0.1);
  CGFloat shadow4BlurRadius = 25;
  
  //// Frames
  CGRect frame13 = CGRectMake(0, 0, 300, 80);
  
  if (self.isNew) {
    //// NewHighScore
    {
    //// Text 13 Drawing
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect text13Rect = CGRectMake(CGRectGetMinX(frame13) + 4, CGRectGetMinY(frame13) + 5, 290, 69);
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, shadow4Offset, shadow4BlurRadius, shadow4.CGColor);
    NSMutableParagraphStyle* text13Style = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    [text13Style setAlignment: NSTextAlignmentCenter];
    
    NSDictionary* text13FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Optima-ExtraBlack" size: 30], NSForegroundColorAttributeName: color11, NSParagraphStyleAttributeName: text13Style};
    
    [@"NEW HIGHSCORE!" drawInRect: CGRectInset(text13Rect, 0, 12) withAttributes: text13FontAttributes];
    CGContextRestoreGState(context);
    }
  } else {
    //// NewHighScore
    {
    //// Text 13 Drawing
    CGRect text13Rect = CGRectMake(CGRectGetMinX(frame13) + 4, CGRectGetMinY(frame13) + 5, 290, 69);
    NSMutableParagraphStyle* text13Style = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    [text13Style setAlignment: NSTextAlignmentCenter];
    
    NSDictionary* text13FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Optima-ExtraBlack" size: 30], NSForegroundColorAttributeName: color18, NSParagraphStyleAttributeName: text13Style};
    
    [@"NEW HIGHSCORE!" drawInRect: CGRectInset(text13Rect, 0, 12) withAttributes: text13FontAttributes];
    }
  }
  
  
}


@end
