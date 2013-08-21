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

@property(strong, nonatomic) NSDictionary *allViewsForObjects;

@property(strong, nonatomic) UILabel *test;

@end

@implementation ClumsyActionView

- (id)initWithPoint:(CGPoint)point {
  self = [super initWithFrame:CGRectMake(point.x, point.y, 320, 100)];
  if (self) {
    self.backgroundColor = [UIColor clearColor];
    self.actionObject = [ClumsyActionObject startClumsyObject];
    self.allViewsForObjects = @{@"Press": @"press",
                                @"Shake": @"shake",
                                @"Swipe Right": @"right",
                                @"Swipe Left": @"left",
                                @"Swipe Up": @"up",
                                @"Swipe Down": @"down",
                                @"Start": @"start"};
    
    self.test = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 100)];
    self.test.backgroundColor = [UIColor clearColor];
    self.test.textAlignment = NSTextAlignmentCenter;
    [self.test setText:@"Start"];
    [self addSubview:self.test];
  }
  return self;
}

- (void)setActionObject:(ClumsyActionObject *)actionObject {
  self.action = actionObject.text;
  [self.test setText:self.action];
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
