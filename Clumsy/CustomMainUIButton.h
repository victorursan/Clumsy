//
//  CustomMainUIButton.h
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomMainUIButtonDelegate.h"

@interface CustomMainUIButton : UIButton

@property(strong, nonatomic) id<CustomMainUIButtonDelegate>delegate;

+ (id)buttonWithFrame:(CGRect)frame andTarget:(id)delegate;
- (void)removeDoubleTap;
- (void)addDoubleTap;
- (void)removeSingleTap;
- (void)addSingleTap;

@end
