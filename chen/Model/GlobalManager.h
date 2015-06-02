//
//  GlobalManager.h
//  chen
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalManager : NSObject

+ (instancetype)shareInstance;

#pragma mark- 请求令牌
@property(nonatomic, copy) NSString *token;

#pragma mark- 秘钥参数
@property(nonatomic, copy) NSString *secretKey;

#pragma mark- 用户电话
@property(nonatomic, copy) NSString *userMobile;

@end
