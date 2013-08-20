//
//  ClumsySocialViewController.m
//  Clumsy
//
//  Created by Victor Ursan on 8/20/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "ClumsySocialViewController.h"

@interface ClumsySocialViewController ()

@end

@implementation ClumsySocialViewController

+ (id)viewForButtonPressed:(UIButton *)sender andScore:(NSNumber *)score {
  if (sender.tag == 1) {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
      return [ClumsySocialViewController twitterSheetWithScore:score];
    }
  } else {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
      return [ClumsySocialViewController facebookSheetWithScore:score];
    }
  }
  return nil;
}

+ (id)facebookSheetWithScore:(NSNumber *)score {
  SLComposeViewController *facebookSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
  [facebookSheet setInitialText:[NSString stringWithFormat:@"facebook score: %@",score]];
  [facebookSheet addURL:[NSURL URLWithString:@"http://google.com/"]];
  return facebookSheet;
}

+ (id)twitterSheetWithScore:(NSNumber *)score {
  SLComposeViewController *tweetSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
  [tweetSheet setInitialText:[NSString stringWithFormat:@"twitter score: %@",score]];
  [tweetSheet addURL:[NSURL URLWithString:@"http://google.com/"]];
  return tweetSheet;
}

@end
