//
//  MainViewController.m
//  RotateDemo
//
//  Created by XUN on 16/8/19.
//  Copyright © 2016年 Jude. All rights reserved.
//

#import "RotateAbleController.h"

@interface RotateAbleController ()

@end

@implementation RotateAbleController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
  
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotate
{
    return  YES;
}

//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
//{
//    return  UIInterfaceOrientationLandscapeRight;
//}

@end
