//
//  UIViewController+ViewLayout.m
//  SFPay
//
//  Created by RanSong on 15/4/13.
//  Copyright (c) 2015年 RanSong. All rights reserved.
//

#import "UIViewController+ViewLayout.h"

@implementation UIViewController (ViewLayout)


- (UIView *)viewLayoutWithId:(ViewLayoutID)viewLayoutId
{
    UIView *view = [self.view viewWithTag:viewLayoutId];
    if (view) {
        return view;
    }
    return nil;
}

@end
