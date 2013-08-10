//
//  ClumsyActionObject.h
//  Clumsy
//
//  Created by Victor Ursan on 8/10/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClumsyActionObject : NSObject

@property(strong, nonatomic) NSString *text;

- (id)initWithAction:(NSString *)action;

+ (id)screenWasSwipedInDirection:(UISwipeGestureRecognizer *)swipe;
+ (id)screenWasPressed;
+ (id)iPhoneWasShaken;
+ (id)randomClumsyObject;

@end
