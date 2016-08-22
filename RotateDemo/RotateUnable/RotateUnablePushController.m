//
//  RotateUnableController.m
//  RotateDemo
//
//  Created by XUN on 16/8/19.
//  Copyright © 2016年 Jude. All rights reserved.
//

#import "RotateUnablePushController.h"

@interface RotateUnablePushController ()

@end

@implementation RotateUnablePushController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  权限被tabbar阻断，不会调用
 */
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"%s",__func__);
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

/**
 *  权限被tabbar阻断，不会调用
 */
- (BOOL)shouldAutorotate
{
    NSLog(@"%s",__func__);
    return  YES;
}

@end
