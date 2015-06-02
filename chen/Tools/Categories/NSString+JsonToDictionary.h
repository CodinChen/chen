//
//  NSString+JsonToDictionary.h
//  ShowDemo
//
//  Created by RanSong on 15/1/4.
//  Copyright (c) 2015年 RanSong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JsonToDictionary)

/**
 *  Json字符串转成字典
 *
 *  @return 转换后的字典
 */
- (NSDictionary *)jsonToDictionary;

+(NSString *)dateToString:(NSDate *)date;

@end
