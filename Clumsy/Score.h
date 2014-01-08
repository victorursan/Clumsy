//
//  Score.h
//  Clumsy
//
//  Created by Victor Ursan on 1/8/14.
//  Copyright (c) 2014 Victor Ursan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Score : NSManagedObject

@property (nonatomic, retain) NSNumber * highScore;

@end
