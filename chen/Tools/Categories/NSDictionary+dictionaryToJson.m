//
//  NSDictionary+dictionaryToJson.m
//  ShowDemo
//
//  Created by RanSong on 15/1/4.
//  Copyright (c) 2015年 RanSong. All rights reserved.
//

#import "NSDictionary+dictionaryToJson.h"

@implementation NSDictionary (dictionaryToJson)

- (NSString *)dictionaryToJson
{
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    if ([jsonData length] > 0 && error == nil)
    {
        NSString *temp = [[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        return [temp stringByReplacingOccurrencesOfString:@" " withString:@""];
    }
    return nil;
}

@end
