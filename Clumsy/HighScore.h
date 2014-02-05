//
//  HighScore.h
//  Clumsy
//
//  Created by Victor Ursan on 1/8/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Score.h"

@interface HighScore : NSObject

- (id)initWithContext:(NSManagedObjectContext *)context;
- (void)setHighScore:(NSInteger)score;
- (Score *)scoreValue;

@property(nonatomic, retain) NSManagedObjectContext *context;
@property(nonatomic, retain) NSFetchRequest *fetcher;
@property(nonatomic ) Score *score;

@end
