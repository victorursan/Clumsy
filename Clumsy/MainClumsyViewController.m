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
#import "ClumsyEngine.h"
#import "ClumsyActionObject.h"
#import "ClumsyScoreView.h"

@interface MainClumsyViewController ()

@property(strong, nonatomic) CustomMainUILabel *clumsyMainLabel;
@property(strong, nonatomic) CustomClumsyMainView *mainView;
@property(strong, nonatomic) ClumsyEngine *engine;

@end

@implementation MainClumsyViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.mainView = [[CustomClumsyMainView alloc] initWithFrame:self.view.bounds];
  self.view = self.mainView;
  
  self.clumsyMainLabel = [[CustomMainUILabel alloc] initWithFrame:CGRectMake(0, 200, 320, 60)];
  self.clumsyMainLabel.text = @"Start";
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

- (id)addSwipeWithDirection:(UISwipeGestureRecognizerDirection)direction{
  return [CustomUISwipeGesture swipeWithTarget:self andDirection:direction];
}

- (void)screenWasPressed:(UIButton *)sender {
  if ([self.clumsyMainLabel.text isEqualToString:@"Start"]) {
    self.engine = [ClumsyEngine startEngineWithTarget:self];
  } else {
    [self.engine verifyClumsyActionTaken:[ClumsyActionObject screenWasPressed]];
  }
}

- (void)screenWasSwiped:(UISwipeGestureRecognizer *)swipeGesture {
  [self.engine verifyClumsyActionTaken:[ClumsyActionObject screenWasSwipedInDirection:swipeGesture]];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
  if (event.subtype == UIEventSubtypeMotionShake) {
    [self.engine verifyClumsyActionTaken:[ClumsyActionObject iPhoneWasShaken]];
  }
}

- (void)setClumsyMainLabelTextTo:(ClumsyActionObject *)clumsyObject {
  self.clumsyMainLabel.text = clumsyObject.text;
  [self.mainView nextBackgroundColor];
}

- (void)failedClumsyActionWithScore:(NSNumber *)score {
  self.engine = nil;
  self.clumsyMainLabel.text = @"Start";
  [self.view addSubview:[ClumsyScoreView viewWithFrame:self.view.bounds delegate:self andScore:score ]];
  [self.mainView nextBackgroundColor];
}

- (void)presentSocialViewController:(SLComposeViewController *)socialViewController{
  [self presentViewController:socialViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
