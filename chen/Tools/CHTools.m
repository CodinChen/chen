//
//  CHTools.m
//  picture
//
//  Created by ssf-2 on 15-5-12.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "CHTools.h"

@implementation CHTools

+(UIView *)createGradualColorViewWithFrame:(CGRect)frame andLocations:(NSArray *)locations andColors:(NSArray *)colors andIsVertical:(BOOL)isVertical{
    
    NSMutableArray *mutColors = [NSMutableArray array];
    
    for (UIColor *color in colors)
    {
        [mutColors addObject:(id)color.CGColor];
    }
    
    UIView *view = [[UIView alloc]initWithFrame:frame];
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = frame;
    gradientLayer.locations = locations;
    gradientLayer.colors = mutColors;
    
    if (isVertical)
    {
        gradientLayer.startPoint = CGPointMake(0.5, 0);
        gradientLayer.endPoint = CGPointMake(0.5, 1);
    }
    else
    {
        gradientLayer.startPoint = CGPointMake(0, 0.5);
        gradientLayer.endPoint = CGPointMake(1, 0.5);
    }
    
    [view.layer addSublayer:gradientLayer];//颜色直接add，通过shapeLayer截取图形 setMask:shapeLayer
    
    return view;
}

+(UIImage *)createImageWithColor:(UIColor *)color andSize:(CGSize)size{
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+(UIImage *)createCircleImageWithColor:(UIColor *)color andSize:(CGSize)size{
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillEllipseInRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+(NSString *)translateToBankCardFormat:(NSString *)num{
    NSNumber *number = (NSNumber *)num;
    NSNumberFormatter *formatter = [NSNumberFormatter new];
    [formatter setUsesGroupingSeparator:YES];
    [formatter setGroupingSize:4];
    [formatter setGroupingSeparator:@" "];
    return [formatter stringFromNumber:number];
}

@end
