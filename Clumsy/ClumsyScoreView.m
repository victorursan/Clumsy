//
//  ClumsyScoreView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreView.h"
#import "ClumsyScoreButton.h"

@implementation ClumsyScoreView

- (id)initWithFrame:(CGRect)frame andScore:(NSNumber *)score{
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    
    UIView *scoreInterface = [[UIView alloc] initWithFrame:CGRectMake(40, 180, 240, 120)];
    scoreInterface.backgroundColor = [UIColor grayColor];
    [self addSubview:scoreInterface];
    
    ClumsyScoreButton *saveButton = [[ClumsyScoreButton alloc] initWithFrame:CGRectMake(220, 270, 60, 30)
                                                                       title:@"Save"
                                                                      target:self
                                                                      action:@selector(saveButtonPressed:)];
    [self addSubview:saveButton];
    
    ClumsyScoreButton *cancelButton = [[ClumsyScoreButton alloc] initWithFrame:CGRectMake(155, 270, 60, 30)
                                                                         title:@"Cancel"
                                                                        target:self
                                                                        action:@selector(cancelButtonPressed:)];
    [self addSubview:cancelButton];
  }
  return self;
}

- (void)saveButtonPressed:(UIButton *)sender {
  [self removeFromSuperview];
}

- (void)cancelButtonPressed:(UIButton *)sender {
  [self removeFromSuperview];
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
