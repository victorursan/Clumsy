//
//  ClumsyHighScoreLabel.h
//  Clumsy
//
//  Created by Victor Ursan on 1/9/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Score.h"
#import "HighScore.h"

@interface ClumsyHighScoreLabel : UILabel

@property(nonatomic) NSInteger score;

+ (id)labelForMainViewWithFrame:(CGRect)frame andScore:(Score *)score;

@end
