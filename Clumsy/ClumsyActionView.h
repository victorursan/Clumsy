//
//  ClumsyActionView.h
//  Clumsy
//
//  Created by Victor Ursan on 8/21/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClumsyActionObject.h"

@interface ClumsyActionView : UIView

@property(strong, nonatomic) ClumsyActionObject *actionObject;
@property(strong, nonatomic) NSString *action;

- (id)initWithFrame:(CGRect)frame;

@end
