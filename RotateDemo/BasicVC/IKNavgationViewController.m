//
//  IKNavgationViewController.m
//  iKinloop
//
//  Created by 徐遵成 on 15/6/4.
//  Copyright (c) 2015年 Jude. All rights reserved.
//

#import "IKNavgationViewController.h"
#import "RotateAbleController.h"


@interface IKNavgationViewController ()

@end

@implementation IKNavgationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


/**
 *  拦截所有push进来的子控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

/**
 *  只需RotateAbleController支持横屏，其他不需要支持
 *
 */
- (BOOL)shouldAutorotate
{
    if ([self.topViewController isKindOfClass:[RotateAbleController class]]) {
        return YES;
    }
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([self.topViewController isKindOfClass:[RotateAbleController class]]) {
        return [self.topViewController supportedInterfaceOrientations];
    } else {
        return UIInterfaceOrientationMaskPortrait;
    }
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return  UIInterfaceOrientationLandscapeRight;
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}




@end
