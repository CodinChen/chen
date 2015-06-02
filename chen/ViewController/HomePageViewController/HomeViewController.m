//
//  HomeViewController.m
//  chen
//
//  Created by ssf-2 on 15-5-27.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeLayoutView.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    HomeLayoutView *homeView = [HomeLayoutView new];
    [self.view addSubview:homeView];
    [homeView loadWithNib:@"HomeLayoutView"];
    
//    [homeView viewLayout];
    
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
