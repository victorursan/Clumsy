//
//  CustomClumsyMainView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "CustomClumsyMainView.h"

@interface CustomClumsyMainView ()

@property(strong, nonatomic) NSArray *allUIColors;

@end

@implementation CustomClumsyMainView {
  int count;
}

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor orangeColor];
    count = 1;
  }
  return self;
}

- (void)implementAllUIColors {
  self.allUIColors = @[[UIColor orangeColor],[UIColor redColor],[UIColor blueColor],[UIColor purpleColor],[UIColor darkGrayColor]];
}

- (void)nextBackgroundColor {
  [self implementAllUIColors];
  if (count >= 5) count = 0;
  self.backgroundColor = self.allUIColors[count];
  count ++;
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
