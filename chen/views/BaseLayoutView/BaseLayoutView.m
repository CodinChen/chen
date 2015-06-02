//
//  BaseLayoutView.m
//  chen
//
//  Created by ssf-2 on 15-5-27.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "BaseLayoutView.h"

@interface BaseLayoutView ()

@property (nonatomic, copy)  dispatch_block_t     actionBlock;               //非列表事件响应
@property (nonatomic, copy)  tableViewActionBlock tableViewActionBlock;      //列表事件响应

@end

@implementation BaseLayoutView

-(void)viewLayout{
    [self layoutView:self];//autolayout
}

- (void) loadWithNib:(NSString *)nibNamed
{
    [self layoutView:self];
    UIView * nibView =  [[NSBundle mainBundle] loadNibNamed:nibNamed owner:nil options:nil].firstObject;
    [self addSubview:nibView];//加载xib
    
    //布局xib
    [self layoutView:nibView];
}

-(void)layoutView:(UIView *)view{
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.superview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[VIEW]-0-|" options:0 metrics:nil views:@{@"VIEW":view}]];
    [self.superview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[VIEW]-0-|" options:0 metrics:nil views:@{@"VIEW":view}]];
}

- (void)addEventActionBlock:(dispatch_block_t)actionBlock
{
    self.actionBlock = actionBlock;
}

- (void)addTableViewActionBlock:(tableViewActionBlock)tableViewActionBlock
{
    self.tableViewActionBlock = tableViewActionBlock;
}

//- (void)refreshViewLayout:(BaseDataModel *)model
//{
//}

- (void)dealloc
{
    NSLog(@"%s %@", __FUNCTION__, [self class]);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
