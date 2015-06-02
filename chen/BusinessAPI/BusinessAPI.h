//
//  BusinessAPI.h
//  chen
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kDateFormatter;
extern NSString *const kEmptyChar;
extern NSString *const kEncodeTypeKey;
extern NSString *const kSecretKey;
extern NSString *const kTokenKey;


/**
 *  加密方式 1.未生成token 加密 2.已生成token 加密 0.不需要加密
 */
typedef NS_ENUM(NSInteger, EncryptType)
{
    ENoEncrypt = 0,             //不需要加密
    ENotHasTokenEncrypt = 1,    //未生成token 加密
    EHasTokenEncrypt = 2,       //已生成token 加密
};

/**
 *  业务功能接口
 */

@interface BusinessAPI : NSObject



@end
