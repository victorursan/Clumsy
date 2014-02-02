//
//  CustomMainUIButton.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "CustomMainUIButton.h"

@interface CustomMainUIButton ()

@property(strong, nonatomic) UITapGestureRecognizer *singleTap;
@property(strong, nonatomic) UITapGestureRecognizer *doubleTap;

@end

@implementation CustomMainUIButton

- (id)initWithFrame:(CGRect)frame andTarget:(id)delegate {
  self = [super initWithFrame:frame];
  if (self) {
    self.delegate = delegate;
    
    self.singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self.delegate action:@selector(screenWasTapped:)];
    self.doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self.delegate action:@selector(screenWasDoubleTapped:)];
    self.singleTap.numberOfTapsRequired = 1;
    self.doubleTap.numberOfTapsRequired = 2;
    [self addGestureRecognizer:self.singleTap];
    [self addGestureRecognizer:self.doubleTap];
  }
  return self;
}

- (void)removeDoubleTap {
  if ([[self gestureRecognizers] containsObject:self.doubleTap]) {
    [self removeGestureRecognizer:self.doubleTap];
  }
}

- (void)addDoubleTap {
  if (![[self gestureRecognizers] containsObject:self.doubleTap]) {
    [self addGestureRecognizer:self.doubleTap];
  }
  
}

- (void)removeSingleTap {
  if ([[self gestureRecognizers] containsObject:self.singleTap]) {
    [self removeGestureRecognizer:self.singleTap];
  }
}

- (void)addSingleTap {
  if (![[self gestureRecognizers] containsObject:self.singleTap]) {
    [self addGestureRecognizer:self.singleTap];
  }
}

+ (id)buttonWithFrame:(CGRect)frame andTarget:(id)delegate {
  return [[CustomMainUIButton alloc] initWithFrame:frame andTarget:delegate];
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
