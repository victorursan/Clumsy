//
//  ClumsySocialHandler.h
//  Clumsy
//
//  Created by Victor Ursan on 8/22/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClumsySocialHandler : NSObject

- (id)shareClumsyWithService:(NSString *)service;
+ (id)viewControllerForButton:(UIButton *)sender andScore:(NSNumber *)score;
+ (id)shareClumsyForButton:(UIButton *)sender;

@end
