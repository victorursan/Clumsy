//
//  ClumsyScoreLable.m
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreLable.h"

@implementation ClumsyScoreLable

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    self.textAlignment = NSTextAlignmentCenter;
    self.textColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor clearColor];
  }
  return self;
}

+ (id)lableWithFrame:(CGRect)frame andScore:(NSNumber *)score {
  ClumsyScoreLable *scoreLable = [[ClumsyScoreLable alloc] initWithFrame:frame];
  scoreLable.text = [NSString stringWithFormat:@"Your Clumsy score is: %@",score];
  return scoreLable;
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
