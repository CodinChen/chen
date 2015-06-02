//
//  GlobalManager.m
//  chen
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "GlobalManager.h"

NSString *const kInitChar = @"";

@implementation GlobalManager

+ (instancetype)shareInstance
{
    static GlobalManager *g_GlobalManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        g_GlobalManager = [[self alloc] init];
    });
    return g_GlobalManager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _token      = kInitChar;
        _secretKey  = kInitChar;
        _userMobile = kInitChar;
    }
    return self;
}

@end
