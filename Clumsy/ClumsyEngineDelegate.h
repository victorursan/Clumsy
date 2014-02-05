//
//  ClumsyEngineDelegate.h
//  Clumsy
//
//  Created by Victor Ursan on 8/10/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClumsyActionObject.h"

@protocol ClumsyEngineDelegate <NSObject>

- (void)setClumsyMainLabelTextTo:(ClumsyActionObject *)clumsyObject;
- (void)failedClumsyActionWithScore:(NSNumber *)score;
- (void)incrementProgressViewReset:(BOOL)reset;

@end
