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

@interface MainClumsyViewController ()

@end

@implementation MainClumsyViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view = [[CustomClumsyMainView alloc] initWithFrame:self.view.bounds];
  [self.view addSubview:[[CustomMainUIButton alloc] initWithFrame:self.view.bounds andTarget:self]];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)screenWasPressed:(UIButton *)sender {
  NSLog(@"screen Was Pressed");
}

@end
