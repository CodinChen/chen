//
//  HomeLayoutView.m
//  chen
//
//  Created by ssf-2 on 15-5-27.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "HomeLayoutView.h"

@implementation HomeLayoutView{
    UIView *lastView;
}

-(void)viewLayout{
    [super viewLayout];
    
    UIView *topBgView = [UIView new];
    topBgView.translatesAutoresizingMaskIntoConstraints = NO;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.translatesAutoresizingMaskIntoConstraints = NO;
    btn.layer.cornerRadius = 5.0f;
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"123" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:btn];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[view]-10-|" options:0 metrics:nil views:@{@"view":btn}]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-64-[view(40)]" options:0 metrics:nil views:@{@"view":btn}]];
    
    
}

-(void)awakeFromNib{
    [super awakeFromNib];
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
