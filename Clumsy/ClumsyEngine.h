//
//  ClumsyEngine.h
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClumsyEngineDelegate.h"

@interface ClumsyEngine : NSObject

@property(strong, nonatomic) id<ClumsyEngineDelegate>delegate;

+ (id)startEngineWithTarget:(id)delegate;
- (void)actionWithClumsyObject:(ClumsyActionObject *)clumsyObject;

@end
