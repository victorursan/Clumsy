//
//  CustomMainUIButtonDelegate.h
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CustomMainUIButtonDelegate <NSObject>

- (void)screenWasTapped:(UIButton *)sender;
- (void)screenWasDoubleTapped:(UITapGestureRecognizer *)gesture;

@end
