//
//  MainClumsyViewController.m
//  Clumsy
//
//  Created by Victor Ursan on 8/9/13.
//  Copyright (c) 2013 Victor Ursan. All rights reserved.
//

#import "MainClumsyViewController.h"
#import "CustomClumsyMainView.h"
#import "CustomMainUIButton.h"
#import "CustomUISwipeGesture.h"
#import "ClumsyEngine.h"
#import "ClumsyActionObject.h"
#import "ClumsyScoreView.h"
#import "ClumsySocialButton.h"
#import "ClumsyActionView.h"

@interface MainClumsyViewController ()


@property(strong, nonatomic) CustomClumsyMainView *mainView;
@property(strong, nonatomic) ClumsyEngine *engine;
@property(strong, nonatomic) ClumsySocialButton *twitterButton;
@property(strong, nonatomic) ClumsySocialButton *facebookButton;
@property(strong, nonatomic) ClumsyActionView *actionView;

@end

@implementation MainClumsyViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.mainView = [[CustomClumsyMainView alloc] initWithFrame:self.view.bounds];
  self.view = self.mainView;
   
  self.actionView = [[ClumsyActionView alloc] initWithPoint:CGPointMake(0, 180)];
  [self.view addSubview:self.actionView];
  
  [self.view addSubview:[[CustomMainUIButton alloc] initWithFrame:self.view.bounds andTarget:self]];
  
  self.twitterButton = [ClumsySocialButton buttonWithTwitterPoint:CGPointMake(210, 0) andDelegate:self];
  [self.view addSubview:self.twitterButton];
  self.facebookButton = [ClumsySocialButton buttonWithFacebookPoint:CGPointMake(265, 0) andDelegate:self];
  [self.view addSubview:self.facebookButton];
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
  if ([self.actionView.action isEqualToString:[[ClumsyActionObject startClumsyObject] text]]) {
    self.engine = [ClumsyEngine startEngineWithTarget:self];
    [self hideSocialButtons];
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
  self.actionView.actionObject = clumsyObject;
  [self.mainView nextBackgroundColor];
}

- (void)failedClumsyActionWithScore:(NSNumber *)score {
  self.engine = nil;
  self.actionView.actionObject = [ClumsyActionObject startClumsyObject];
  [self.view addSubview:[ClumsyScoreView viewWithFrame:self.view.bounds delegate:self andScore:score ]];
  [self.mainView nextBackgroundColor];
}

- (void)hideSocialButtons {
  self.facebookButton.hidden = YES;
  self.twitterButton.hidden = YES;
}

- (void)showSocialButtons {
  self.facebookButton.hidden = NO;
  self.twitterButton.hidden = NO;

}

- (void)presentSocialViewController:(SLComposeViewController *)socialViewController{
  [self presentViewController:socialViewController animated:YES completion:nil];
}

- (void)socialButtonPressed:(UIButton *)sender {
  NSLog(@"sender tag: %ld", (long)sender.tag);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
