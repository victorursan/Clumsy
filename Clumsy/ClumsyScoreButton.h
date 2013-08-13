//
//  ClumsyScoreButton.h
//  Clumsy
//
//  Created by Victor Ursan on 8/13/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClumsyScoreButton : UIButton

- (id)initWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action;
+ (id)buttonWithFrame:(CGRect)frame title:(NSString *)title target:(id)target action:(SEL)action;


@end
