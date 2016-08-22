//
//  RotateModalController.m
//  RotateDemo
//
//  Created by XUN on 16/8/19.
//  Copyright © 2016年 Jude. All rights reserved.
//

#import "RotateModalController.h"

@interface RotateModalController ()

@end

@implementation RotateModalController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}


/**
 *  可自动旋转方向
 *
 *  @return <#return value description#>
 */
- (BOOL)shouldAutorotate
{
    return YES;
}

/**
 *  支持UIInterfaceOrientationMaskAllButUpsideDown方向
 *
 *  @return <#return value description#>
 */
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return  UIInterfaceOrientationPortrait;
}


@end
