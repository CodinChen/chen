//
//  CHLineView.m
//  picture
//
//  Created by ssf-2 on 15-5-12.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "CHLineView.h"

@implementation CHLineView{
    CGFloat leftDefault;
    CGFloat rightDefault;
    BOOL topDefault;
    BOOL bottomDefault;
    ClickBlock tapAction;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self initDefault];
    }
    return self;
}

-(void)awakeFromNib{
    self.backgroundColor = [UIColor whiteColor];
    [self initDefault];
}

-(void)initDefault{
    leftDefault = 0;
    rightDefault = 0;
    topDefault = NO;
    bottomDefault = YES;
    
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    [self addGestureRecognizer:gesture];
}

-(void)tap{
    tapAction();
}

-(void)setLeftSideDistance:(CGFloat)leftSideDistance{
    leftDefault = leftSideDistance;
    [self setNeedsDisplay];
}

-(void)setRightSideDistance:(CGFloat)rightSideDistance{
    rightDefault = rightSideDistance;
    [self setNeedsDisplay];
}

-(void)setHasTopLine:(BOOL)hasTopLine{
    topDefault = hasTopLine;
    [self setNeedsDisplay];
}

-(void)setHasBottomLine:(BOOL)hasBottomLine{
    bottomDefault = hasBottomLine;
    [self setNeedsDisplay];
}

-(void)setClickBlock:(ClickBlock)clickBlock{
    _clickBlock = clickBlock;
    tapAction = clickBlock;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithRed:204/255.0 green:204/255.0 blue:204/255.0 alpha:1].CGColor);
    CGContextSetLineWidth(context, 1.0f);
    if (topDefault) {
        CGContextMoveToPoint(context, leftDefault, 0);
        CGContextAddLineToPoint(context, rect.size.width-rightDefault, 0);
        CGContextStrokePath(context);
    }
    if (bottomDefault) {
        CGContextMoveToPoint(context, leftDefault, rect.size.height);
        CGContextAddLineToPoint(context, rect.size.width-rightDefault, rect.size.height);
        CGContextStrokePath(context);
    }
}

@end
