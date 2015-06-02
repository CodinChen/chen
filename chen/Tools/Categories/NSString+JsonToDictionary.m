//
//  NSString+JsonToDictionary.m
//  ShowDemo
//
//  Created by RanSong on 15/1/4.
//  Copyright (c) 2015年 RanSong. All rights reserved.
//

#import "NSString+JsonToDictionary.h"

@implementation NSString (JsonToDictionary)

- (NSDictionary *)jsonToDictionary
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    if (!data) {
        return nil;
    }
    id result = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    return result;
}

+(NSString *)dateToString:(NSDate *)date{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyyMMddHHmmssSSS";
    return [formatter stringFromDate:date];
}

@end
