//
//  ClumsySocialViewController.h
//  Clumsy
//
//  Created by Victor Ursan on 8/20/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Social/Social.h>

@interface ClumsySocialViewController : SLComposeViewController

+ (id)viewForButtonPressed:(UIButton *)sender andScore:(NSNumber *)score;

@end
