//
//  CHTools.h
//  picture
//
//  Created by ssf-2 on 15-5-12.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CHTools : NSObject

/**
 * @brief  创建渐变色View
 * @param  frame
 * @param  颜色分布位置数组: min 0; max 1.0
 * @param  颜色数组 UIColor
 * @param  BOOL: Y 竖直;N 水平
 * @return UIView
 */
+(UIView *)createGradualColorViewWithFrame:(CGRect)frame andLocations:(NSArray *)locations andColors:(NSArray *)colors andIsVertical:(BOOL)isVertical;

/**
 * @brief  创建纯色方形图
 * @param  颜色
 * @param  size
 * @return UIImage
 */
+(UIImage *)createImageWithColor:(UIColor *)color andSize:(CGSize)size;

/**
 * @brief  创建纯色圆形图
 * @param  颜色
 * @param  size
 * @return UIImage
 */
+(UIImage *)createCircleImageWithColor:(UIColor *)color andSize:(CGSize)size;

/**
 * @brief  转化为银行卡格式(4个数字空一格)
 * @param  NSString 数字
 * @return NSString
 */
+(NSString *)translateToBankCardFormat:(NSString *)num;

@end
