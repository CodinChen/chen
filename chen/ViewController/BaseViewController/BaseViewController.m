//
//  BaseViewController.m
//  chen
//
//  Created by ssf-2 on 15-5-27.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "BaseViewController.h"
#import "CHTools.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //设置全局导航栏属性
    [self.navigationController.navigationBar setBackgroundImage:[CHTools createImageWithColor:[UIColor redColor] andSize:CGSizeMake(1000, 1000)] forBarMetrics:UIBarMetricsDefault];
    
    NSDictionary *textAttributes1 = @{NSFontAttributeName:            [UIFont boldSystemFontOfSize:18],
                                      NSForegroundColorAttributeName: [UIColor redColor]};
    self.navigationController.navigationBar.titleTextAttributes = textAttributes1;
    
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
