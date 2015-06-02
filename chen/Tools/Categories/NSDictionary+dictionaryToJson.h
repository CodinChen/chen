//
//  NSDictionary+dictionaryToJson.h
//  ShowDemo
//
//  Created by RanSong on 15/1/4.
//  Copyright (c) 2015年 RanSong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (dictionaryToJson)

/**
 *  字典转成Json字符串
 *
 *  @return 转换后的Json字符串
 */
- (NSString *)dictionaryToJson;

@end
