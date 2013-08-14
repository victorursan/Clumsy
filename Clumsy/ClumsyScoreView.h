//
//  ClumsyScoreView.h
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClumsyScoreView : UIView <UITextFieldDelegate>

- (id)initWithFrame:(CGRect)frame andScore:(NSNumber *)score;
+ (id)viewWithFrame:(CGRect)frame andScore:(NSNumber *)score;

@end
