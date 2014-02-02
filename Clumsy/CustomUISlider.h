//
//  CustomUISlider.h
//  Clumsy
//
//  Created by Victor Ursan on 2/2/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomUISlider : UISlider

+ (id)sliderWithFrame:(CGRect)frame;
- (void)incrementSliderReset:(BOOL)reset;

@end
