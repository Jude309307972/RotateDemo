//
//  RotateUnabelModalController.m
//  RotateDemo
//
//  Created by XUN on 16/8/22.
//  Copyright © 2016年 Jude. All rights reserved.
//

#import "RotateUnabelModalController.h"

@interface RotateUnabelModalController ()

@end

@implementation RotateUnabelModalController

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

// 只支持竖屏方向，不可横屏
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    NSLog(@"%s",__func__);
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotate
{
    NSLog(@"%s",__func__);
    return  YES;
}


@end
