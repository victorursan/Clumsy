//
//  ClumsyScoreAlert.m
//  Clumsy
//
//  Created by Victor Ursan on 8/11/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreAlert.h"

@implementation ClumsyScoreAlert

- (id)initWithScore:(NSNumber *)score {
    self = [super init];
    if (self) {
      self.title = @"You were Clumsy";
      self.message = [NSString stringWithFormat:@"Your score:%@", score];
      [self addButtonWithTitle:@"OK"];
      self.cancelButtonIndex = 0;
    }
    return self;
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
