//
//  CustomClumsyMainView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "CustomClumsyMainView.h"

@interface CustomClumsyMainView ()

@property(strong, nonatomic) UIColor *color;

@end

@implementation CustomClumsyMainView

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor purpleColor];
  }
  return self;
}

- (void)viewWithRedColor {
  self.backgroundColor = [UIColor redColor];
}

- (void)viewWithYellowColor {
  self.backgroundColor = [UIColor yellowColor];
}


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
