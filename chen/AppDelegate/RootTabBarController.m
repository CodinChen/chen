//
//  RootTabBarController.m
//  chen
//
//  Created by ssf-2 on 15-5-27.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "RootTabBarController.h"
#import "HomeViewController.h"
#import "GlobalDefine.h"
#import "AccountViewController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    HomeViewController *homeVC = [HomeViewController new];
    AccountViewController *accVC = [AccountViewController new];
    
    self.viewControllers = @[homeVC,accVC];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, SCREENWIDTH, 1)];
    CAShapeLayer *layer0 = [CAShapeLayer layer];
    layer0.path = path.CGPath;
    layer0.fillColor = [UIColor whiteColor].CGColor;
    [self.tabBar.layer addSublayer:layer0];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
