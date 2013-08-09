//
//  MainClumsyViewController.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "MainClumsyViewController.h"
#import "CustomClumsyMainView.h"
#import "CustomMainUILabel.h"
#import "CustomMainUIButton.h"
#import "CustomUISwipeGesture.h"

@interface MainClumsyViewController ()

@property(strong, nonatomic) CustomMainUILabel *clumsyMainLabel;
@property(strong, nonatomic) CustomClumsyMainView *mainView;

@end

@implementation MainClumsyViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.mainView = [[CustomClumsyMainView alloc] initWithFrame:self.view.bounds];
  self.view = self.mainView;
  
  self.clumsyMainLabel = [[CustomMainUILabel alloc] initWithFrame:CGRectMake(0, 200, 320, 60)];
  self.clumsyMainLabel.text = @"Clumsy";
  [self.view addSubview:self.clumsyMainLabel];
  
  [self.view addSubview:[[CustomMainUIButton alloc] initWithFrame:self.view.bounds andTarget:self]];

  [self addSwipes];
}

-(BOOL)canBecomeFirstResponder {
  return YES;
}

- (void)addSwipes {
  [self.view addGestureRecognizer:[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionUp]];
  [self.view addGestureRecognizer:[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionDown]];
  [self.view addGestureRecognizer:[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionLeft]];
  [self.view addGestureRecognizer:[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionRight]];
}

- (UISwipeGestureRecognizer *)addSwipeWithDirection:(UISwipeGestureRecognizerDirection)direction{
  return [CustomUISwipeGesture swipeWithTarget:self andDirection:direction];
}

- (void)screenWasPressed:(UIButton *)sender {
  NSLog(@"screen Was Pressed");
}

- (void)screenWasSwiped:(UISwipeGestureRecognizer *)swipeGesture {
  NSLog(@"screen Was Swiped");
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
  if (event.subtype == UIEventSubtypeMotionShake) {
    NSLog(@"iPhone was shaken");
  }
}

- (void)setClumsyMainLabelTextTo:(NSString *)text {
  self.clumsyMainLabel.text = text;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
