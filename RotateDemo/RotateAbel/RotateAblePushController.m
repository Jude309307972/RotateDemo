//
//  RotateAbleController.m
//  RotateDemo
//
//  Created by XUN on 16/8/19.
//  Copyright © 2016年 Jude. All rights reserved.
//

#import "RotateAblePushController.h"

@interface RotateAblePushController ()

@end

@implementation RotateAblePushController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)rotate:(UIButton *)sender { // 强制横屏
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        NSNumber *value = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeRight];
        [[UIDevice currentDevice] setValue:value forKey:@"orientation"];
    }
}


- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if (1) { // 旋转支持方向 ，可加条件旋转；比如我之前的项目是在视频出现之后才支持横屏，否则只能竖屏
        return UIInterfaceOrientationMaskAllButUpsideDown;
    }
    return UIInterfaceOrientationMaskPortrait;
}

/**
 *  支持自动旋转
 */
- (BOOL)shouldAutorotate
{
    return  YES;
}

@end
