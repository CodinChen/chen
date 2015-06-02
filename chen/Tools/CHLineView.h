//
//  CHLineView.h
//  picture
//
//  Created by ssf-2 on 15-5-12.
//  Copyright (c) 2015年 CH. All rights reserved.
//带线的view

#import <UIKit/UIKit.h>

typedef void(^ClickBlock)();

@interface CHLineView : UIView

@property(nonatomic,assign)CGFloat leftSideDistance; //左边距 , default 0;
@property(nonatomic,assign)CGFloat rightSideDistance;//右边距 , default 0;
@property(nonatomic,assign)   BOOL hasTopLine;       //是否有上边线 , default NO;
@property(nonatomic,assign)   BOOL hasBottomLine;    //是否有下边线 , default YES;

@property(assign,nonatomic) ClickBlock clickBlock;

@end
