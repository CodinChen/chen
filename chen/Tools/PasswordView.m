//
//  PasswordView.m
//  Password
//
//  Created by ssf-2 on 15-5-14.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "PasswordView.h"

@implementation PasswordView{
    NSInteger count;//画的点个数
    UIColor *line_color;//颜色
    CGFloat edgeLength;//边长
    CGFloat line_width;//线宽
    UIColor *word_color;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initDefault];
    }
    return self;
}

-(void)awakeFromNib{
    [self initDefault];
}

-(void)initDefault{
    
    count = 0;
    line_color = [UIColor blackColor];
    self.backgroundColor = [UIColor clearColor];
    line_width = 0.3;
    word_color = [UIColor blackColor];
    
    CGRect rect = self.frame;
    rect.size.height = rect.size.width/6;
    self.frame = rect;
    
}

#pragma mark - 重写set
-(void)setWordNumber:(NSInteger)wordNumber{
    count = wordNumber;
    [self setNeedsDisplay];
}

-(void)setLineWidth:(CGFloat)lineWidth{
    line_width = lineWidth;
    [self setNeedsDisplay];
}

-(void)setLineColor:(UIColor *)lineColor{
    line_color = lineColor;
    [self setNeedsDisplay];
}

-(void)setWordColor:(UIColor *)wordColor{
    word_color = wordColor;
    [self setNeedsDisplay];
}

#pragma mark - 绘图
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    edgeLength = rect.size.height;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, line_color.CGColor);
    CGContextSetLineWidth(context, line_width);
    
    //外框
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, rect.size.width, 0);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height);
    CGContextAddLineToPoint(context, 0, rect.size.height);
    CGContextClosePath(context);
    CGContextStrokePath(context);
    
    //内格
    for (NSInteger i = 1; i<6; i++) {
        CGContextMoveToPoint(context, edgeLength*i, 0);
        CGContextAddLineToPoint(context, edgeLength*i, rect.size.height);
        CGContextStrokePath(context);
    }
    
    //黑点
    for (NSInteger i = 0; i<count; i++) {
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(edgeLength/4+i*edgeLength, edgeLength/4, edgeLength/2, edgeLength/2) cornerRadius:edgeLength/4];
        [word_color set];
        [path fill];
    }
    
}


@end
