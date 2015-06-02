//
//  PasswordView.h
//  Password
//
//  Created by ssf-2 on 15-5-14.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PasswordView : UIView

@property(nonatomic,assign)CGFloat lineWidth;//线宽 default 0.3
@property(nonatomic,strong)UIColor *lineColor;//线颜色 default black
@property(nonatomic,strong)UIColor *wordColor;//字颜色 default black

@property(nonatomic , assign)NSInteger wordNumber;//字数 default 0

@end
