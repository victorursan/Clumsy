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

- (id)shareClumsyWitgService:(NSString *)service {
  SLComposeViewController *socialSheet = [SLComposeViewController composeViewControllerForServiceType:service];
  [socialSheet setInitialText:[NSString stringWithFormat:@"Try this cool game"]];
  [socialSheet addURL:[NSURL URLWithString:@"http://google.com/"]];
  return socialSheet;}

- (id)viewControllerService:(NSString *)service andScore:(NSNumber *)score {
  SLComposeViewController *socialSheet = [SLComposeViewController composeViewControllerForServiceType:service];
  [socialSheet setInitialText:[NSString stringWithFormat:@"Your Clumsy score is: %@",score]];
  [socialSheet addURL:[NSURL URLWithString:@"http://google.com/"]];
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
    return [[ClumsySocialHandler alloc] shareClumsyWitgService:SLServiceTypeTwitter];
  } else {
    return [[ClumsySocialHandler alloc] shareClumsyWitgService:SLServiceTypeFacebook];
  }
}

@end
