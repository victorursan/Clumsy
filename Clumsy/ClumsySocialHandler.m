//
//  ClumsySocialHandler.m
//  Clumsy
//
//  Created by Victor Ursan on 8/22/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsySocialHandler.h"
#import <Social/Social.h>

@implementation ClumsySocialHandler

- (id)shareClumsyWithService:(NSString *)service {
  SLComposeViewController *socialSheet = [SLComposeViewController composeViewControllerForServiceType:service];
  if ([service isEqual:SLServiceTypeFacebook]) {
    [socialSheet setInitialText:[NSString stringWithFormat:@"Nobody told you how *clumsy* you are with your mobile device? Check out Clumsy App!"]];
  } else {
    [socialSheet setInitialText:[NSString stringWithFormat:@"RT @clumsyapp: Nobody told you how *clumsy* you are with your mobile device? Check out Clumsy App!"]];
  }
  [socialSheet addURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/clumsy/id800927642?mt=8"]];
  return socialSheet;
}

- (id)viewControllerService:(NSString *)service andScore:(NSNumber *)score {
  SLComposeViewController *socialSheet = [SLComposeViewController composeViewControllerForServiceType:service];
  if ([service isEqual:SLServiceTypeFacebook]) {
    [socialSheet setInitialText:[NSString stringWithFormat:@"I made %d points before I became *clumsy*. How soon until you become Clumsy?",[score integerValue]]];
  } else {
    [socialSheet setInitialText:[NSString stringWithFormat:@"RT @clumsyapp: I made %d points before I became *clumsy*. How soon until you become Clumsy?",[score integerValue]]];
  }
  [socialSheet addURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/clumsy/id800927642?mt=8"]];
  return socialSheet;
}

+ (id)viewControllerForButton:(UIButton *)sender andScore:(NSNumber *)score {
  if (sender.tag == 1) {
    return [[ClumsySocialHandler alloc] viewControllerService:SLServiceTypeTwitter andScore:score];
  } else {
    return [[ClumsySocialHandler alloc] viewControllerService:SLServiceTypeFacebook andScore:score];
  }
}

+ (id)shareClumsyForButton:(UIButton *)sender {
  if (sender.tag == 1) {
    return [[ClumsySocialHandler alloc] shareClumsyWithService:SLServiceTypeTwitter];
  } else {
    return [[ClumsySocialHandler alloc] shareClumsyWithService:SLServiceTypeFacebook];
  }
}

@end
