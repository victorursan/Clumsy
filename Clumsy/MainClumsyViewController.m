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
#import "ClumsySocialHandler.h"
#import "ClumsyHighScoreLabel.h"

@interface MainClumsyViewController ()

@property(strong, nonatomic) CustomClumsyMainView *mainView;
@property(strong, nonatomic) ClumsyEngine *engine;
@property(strong, nonatomic) ClumsySocialButton *twitterButton;
@property(strong, nonatomic) ClumsySocialButton *facebookButton;
@property(strong, nonatomic) ClumsyActionView *actionView;
@property(strong, nonatomic) ClumsyHighScoreLabel *highScoreLabel;
@property(strong, nonatomic) CustomMainUIButton *mainButton;

@property(strong, nonatomic) CMMotionManager *motionManager;
@property(strong, nonatomic) NSTimer *timer;

@end

@implementation MainClumsyViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.mainView = [CustomClumsyMainView viewWithFrame:self.view.frame];
  self.actionView = [ClumsyActionView viewWithFrame:self.view.frame];
  self.twitterButton = [ClumsySocialButton buttonWithTwitterPoint:CGPointMake(210, 0) andDelegate:self];
  self.facebookButton = [ClumsySocialButton buttonWithFacebookPoint:CGPointMake(265, 0) andDelegate:self];
  self.highScoreLabel = [ClumsyHighScoreLabel labelForMainViewWithFrame:CGRectMake(10, self.view.bounds.size.height-30, 320, 22) andScore:[self.score highScore]];
  self.view = self.mainView;
  
  
  self.mainButton = [CustomMainUIButton buttonWithFrame:self.view.bounds andTarget:self];
  
  [self.view addSubview:self.actionView];
  [self.view addSubview:self.mainButton];
  [self.view addSubview:self.twitterButton];
  [self.view addSubview:self.facebookButton];
  [self.view addSubview:self.highScoreLabel];
  [self addSwipes];
}

- (void)startDeviceMotion {
  self.motionManager = [CMMotionManager new];
  self.motionManager.accelerometerUpdateInterval = 1.0 / 10.0f;
  [self.motionManager startAccelerometerUpdates];
  self.timer = [NSTimer scheduledTimerWithTimeInterval:self.motionManager.accelerometerUpdateInterval target:self selector:@selector(pollAccel) userInfo:nil repeats:YES];
}

- (void)stopDeviceMotion {
  [self.motionManager stopAccelerometerUpdates];
  self.motionManager = nil;
  [self.timer invalidate];
  self.timer = nil;
}

- (void)pollAccel {
  CMAccelerometerData *data = self.motionManager.accelerometerData;
  CMAcceleration acc = data.acceleration;
  if (fabsf(acc.x) > 0.9f || fabsf(acc.y) > 0.9f){
    NSLog(@"x:%f y:%f",acc.x,acc.y);
    [self stopDeviceMotion];
    [self.engine verifyClumsyActionTaken:[ClumsyActionObject iPhoneWasShaken]];
  }
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

- (void)setClumsyMainLabelTextTo:(ClumsyActionObject *)clumsyObject {
  self.actionView.actionObject = clumsyObject;
  if ([clumsyObject.text isEqual:@"Shake"])
    [self startDeviceMotion];
  else
    [self stopDeviceMotion];
  [self.mainView nextBackgroundColor];
}

- (void)failedClumsyActionWithScore:(NSNumber *)score atAction:(NSString *)action {
  NSLog(@"failedClumsyActionWithScore");
  self.mainButton.enabled = NO;
  self.engine = nil;
  [self stopDeviceMotion];
  [self.score setHighScore:[score integerValue]];
  [self.highScoreLabel setScore:[[[self.score highScore] highScore] integerValue]];

  ClumsyScoreView *scoreView = [ClumsyScoreView viewWithFrame:self.view.bounds delegate:self score:score andAction:action];
  
  NSLog(@"HighSCore:%d",[[[self.score highScore] highScore ] integerValue]);
  
  scoreView.score = self.score;
  [self.view addSubview:scoreView];
}

- (void)startScreen {
  self.actionView.actionObject = [ClumsyActionObject startClumsyObject];
  [self.mainView nextBackgroundColor];
  self.mainButton.enabled = YES;
}

- (void)hideSocialButtons {
  self.facebookButton.hidden = YES;
  self.twitterButton.hidden = YES;
  self.highScoreLabel.hidden = YES;
}

- (void)showSocialButtons {
  self.facebookButton.hidden = NO;
  self.twitterButton.hidden = NO;
  self.highScoreLabel.hidden = NO;
}

- (void)presentSocialViewController:(UIViewController *)socialViewController{
  
  [self presentViewController:socialViewController animated:YES completion:nil];
}

- (void)socialButtonPressed:(UIButton *)sender {
  [self presentSocialViewController:[ClumsySocialHandler shareClumsyForButton:sender]];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
