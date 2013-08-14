//
//  ClumsyScoreView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreView.h"
#import "ClumsyScoreButton.h"
#import "ClumsyScoreInnerBoxView.h"
#import "ClumsyTitleScoreLabel.h"
#import "ClumsyScoreLable.h"

@interface ClumsyScoreView ()

@property(strong, nonatomic) UITextField *playersName;
@property(strong, nonatomic) NSNumber *playersScore;
@end

@implementation ClumsyScoreView

- (id)initWithFrame:(CGRect)frame andScore:(NSNumber *)score {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [self addSubview:[ClumsyScoreInnerBoxView viewWithFrame:CGRectMake(40, 140, 240, 140)]];
    [self addSubview:[ClumsyTitleScoreLabel labelWithFrame:CGRectMake(40, 140, 240, 40)]];
    [self addSubview:[ClumsyScoreLable lableWithFrame:CGRectMake(40, 180, 240, 35) andScore:score]];
    [self addSubview:[ClumsyScoreLable lableForNameWithFrame:CGRectMake(40, 215, 100, 35)]];
    
    self.playersName = [[UITextField alloc] initWithFrame:CGRectMake(140, 220, 130, 23)];
    self.playersName.backgroundColor = [UIColor whiteColor];
    self.playersName.delegate = self;
    self.playersName.placeholder = @"Your Name";
    [self addSubview:self.playersName];
    
    [self addSubview:[ClumsyScoreButton  buttonWithFrame:CGRectMake(220, 250, 60, 30)
                                                   title:@"Save"
                                                  target:self
                                                  action:@selector(saveButtonPressed:)]];
    [self addSubview:[ClumsyScoreButton buttonWithFrame:CGRectMake(155, 250, 60, 30)
                                                  title:@"Cancel"
                                                 target:self
                                                 action:@selector(cancelButtonPressed:)]];
    self.playersScore = score;
  }
  return self;
}

+ (id)viewWithFrame:(CGRect)frame andScore:(NSNumber *)score {
  return [[ClumsyScoreView alloc] initWithFrame:frame andScore:score];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  [textField resignFirstResponder];
  return NO;
}

- (void)saveButtonPressed:(UIButton *)sender {
  NSLog(@"Name: %@", self.playersName.text);
  NSLog(@"Score: %@", self.playersScore);
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
