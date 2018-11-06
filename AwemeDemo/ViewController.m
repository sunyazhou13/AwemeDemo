//
//  ViewController.m
//  AwemeDemo
//
//  Created by sunyazhou on 2018/10/18.
//  Copyright © 2018 sunyazhou.com. All rights reserved.
//

#import "ViewController.h"
#import "AwemeListViewController.h"

#define ColorClear [UIColor clearColor]

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setNavigationBarTitleColor:ColorClear];
    [self setNavigationBarBackgroundColor:ColorClear];
    [self setStatusBarBackgroundColor:ColorClear];
    [self setNavigationBarBackgroundImage:[UIImage new]];
    [self setNavigationBarShadowImage:[UIImage new]];

    [self setStatusBarHidden:NO];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)setNavigationBarTitleColor:(UIColor *)color {
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:color}];
}

- (void)setNavigationBarBackgroundColor:(UIColor *)color {
    [self.navigationController.navigationBar setBackgroundColor:color];
}

- (void)setStatusBarBackgroundColor:(UIColor *)color {
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)]) {
        statusBar.backgroundColor = color;
    }
}

//导航栏暗影透明
- (void)setNavigationBarShadowImage:(UIImage *)image {
    [self.navigationController.navigationBar setShadowImage:image];
}


//导航栏透明
- (void)setNavigationBarBackgroundImage:(UIImage *)image {
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
}


- (void) setStatusBarHidden:(BOOL) hidden {
    [[UIApplication sharedApplication] setStatusBarHidden:hidden];
}


#pragma mark -
#pragma mark - event response 所有触发的事件响应 按钮、通知、分段控件等
- (IBAction)onEnterButtonClick:(UIButton *)sender {
    AwemeListViewController *awemeVC = [[AwemeListViewController alloc] init];
    [self.navigationController pushViewController:awemeVC animated:YES];
    
}

@end
