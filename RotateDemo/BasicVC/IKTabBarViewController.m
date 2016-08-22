//
//  IKTabBarViewController.m
//  iKinloop
//
//  Created by 徐遵成 on 15/6/4.
//  Copyright (c) 2015年 Jude. All rights reserved.
//

#import "IKTabBarViewController.h"

@interface IKTabBarViewController ()

@end

@implementation IKTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

/**
 *   shouldAutorotate 调用顺序最底层容器控制器有优先权级别，先判断tabbarController,再判断navgationController，在具体的某个contoller
 *
 */
- (BOOL)shouldAutorotate
{
    if ([self.selectedViewController isEqual:[self.viewControllers objectAtIndex:0]]) {
         return [self.selectedViewController shouldAutorotate];
    }
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    // return UIInterfaceOrientationMaskAllButUpsideDown;
    return [self.selectedViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return  UIInterfaceOrientationPortrait;
}

@end
