//
//  ClumsyScoreView.m
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsyScoreView.h"
#import "ClumsyScoreOkButton.h"
#import "ClumsyScoreInnerBoxView.h"
#import "ClumsyTitleScoreLabel.h"
#import "ClumsyScoreLable.h"
#import "ClumsyScore.h"
#import "ClumsySocialButton.h"

@interface ClumsyScoreView ()

@property(strong, nonatomic) NSNumber *playersScore;

@end

@implementation ClumsyScoreView

- (id)initWithFrame:(CGRect)frame delegate:(id)delegate andScore:(NSNumber *)score {
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [self addSubview:[ClumsyScoreInnerBoxView viewWithFrame:CGRectMake(25, 160, 270, 120)]];
    [self addSubview:[ClumsyTitleScoreLabel labelWithFrame:CGRectMake(25, 160, 270, 40)]];
    [self addSubview:[ClumsyScoreLable lableWithFrame:CGRectMake(25, 200, 270, 35) andScore:score]];
    [self addSubview:[ClumsySocialButton buttonWithTwitterFrame:CGRectMake(30, 250, 30, 30) andDelegate:self]];
    [self addSubview:[ClumsySocialButton buttonWithFacebookFrame:CGRectMake(65, 250, 30, 30) andDelegate:self]];
    [self addSubview:[ClumsyScoreOkButton buttonWithFrame:CGRectMake(180, 250, 115, 30) andDelegate:self]];
    self.playersScore = score;
    self.delegate = delegate;
  }
  return self;
}

- (void)socialButtonPressed:(UIButton *)sender {
  if (sender.tag == 1) {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
      SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
      [tweetSheet setInitialText:@"Tweeting from my own app! :)"];
      [self.delegate presentSocialViewController:tweetSheet];
    }
  } else if (sender.tag == 2) {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
      SLComposeViewController *faceSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
      [faceSheet setInitialText:@"facebook"];
      [self.delegate presentSocialViewController:faceSheet];
    }
  }
}

+ (id)viewWithFrame:(CGRect)frame delegate:(id)delegate andScore:(NSNumber *)score {
  return [[ClumsyScoreView alloc] initWithFrame:frame delegate:delegate andScore:score];
}

- (void)okButtonPressed:(id)sender {
  [ClumsyScore saveScore:self.playersScore];
  [self removeFromSuperview];
}

/*
 - (void)drawRect:(CGRect)rect {
 
 }
 */

@end
