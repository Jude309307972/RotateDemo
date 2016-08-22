//
//  IKNavgationViewController.m
//  iKinloop
//
//  Created by 徐遵成 on 15/6/4.
//  Copyright (c) 2015年 Jude. All rights reserved.
//

#import "IKNavgationViewController.h"
#import "RotateAblePushController.h"


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

- (BOOL)shouldAutorotate
{
    if ([self.topViewController isKindOfClass:[RotateAblePushController class]]) {
        return [self.topViewController shouldAutorotate];
    }
    return NO; // RotateAblePushController自动旋转交给改控制器自己控制，其他控制器则不支撑自动旋转
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([self.topViewController isKindOfClass:[RotateAblePushController class]]) {
        return [self.topViewController supportedInterfaceOrientations];
    } else {
        return UIInterfaceOrientationMaskPortrait; // RotateAblePushController所支持旋转交给改控制器自己处理，其他控制器则只支持竖屏
    }
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
     NSLog(@"%s",__func__);
    return  UIInterfaceOrientationPortrait;
}

@end
