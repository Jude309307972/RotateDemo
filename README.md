# RotateDemo 
* 该demo以常见的TabbarController---NavController ---Controller控制器结构为例。
* 1. 项目工程勾选支持的屏幕方向
![image](http://upload-images.jianshu.io/upload_images/2800830-55c9c2eca9260396.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
* 2. tabbar

```
 shouldAutorotate  supportedInterfaceOrientations调用顺序最底层容器控制器有优先权级别，先判断tabbarController,再判断navgationController，在具体的某个contoller
-(BOOL)shouldAutorotate
{
    if ([self.selectedViewController isEqual:[self.viewControllers objectAtIndex:0]]) {
         return [self.selectedViewController shouldAutorotate];
    }
    return NO; // tabbar第一栏旋转控制交给下级控制器，其他栏不支持自动旋转
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([self.selectedViewController isEqual:[self.viewControllers objectAtIndex:0]]) {
        return [self.selectedViewController supportedInterfaceOrientations];
    }
    return UIInterfaceOrientationMaskPortrait; // tabbar第一栏控制器所支持旋转方向交给下级控制器处理，其他栏只支持竖屏方向
}
```
* 3 nav

```
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
```

* 4 具体某个需横屏的控制器

```
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if (1) { // 旋转支持方向 ，可加条件旋转；比如我之前的项目是在视频流出现之后才支持横屏，否则只能竖屏
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
```
 


![image](https://github.com/Jude309307972/RotateDemo/blob/master/modal.gif)
![image](https://github.com/Jude309307972/RotateDemo/blob/master/push.gif)

