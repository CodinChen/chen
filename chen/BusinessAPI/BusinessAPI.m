//
//  BusinessAPI.m
//  chen
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "BusinessAPI.h"
#import "AFNetworking.h"


NSString *const kDateFormatter    = @"yyyyMMddHHmmss";   //日期格式
NSString *const kEmptyChar        = @"";
NSString *const kEncodeTypeKey    = @"encodeType";          //生成摘要时的编码类型
NSString *const kUUIDKey          = @"UUID";                 //设备UUID
NSString *const kSecretKey        = @"secretKey";
NSString *const kTokenKey         = @"token";

/**
 *  通用参数请求字段Key
 */
NSString *const kVersionKey     = @"version";        //版本号
NSString *const kServiceTypeKey = @"serviceType";    //功能类型
NSString *const kEncryptTypeKey = @"encryptType";    //加密类型
NSString *const kDataKey        = @"data";           //请求参数
NSString *const kTimestampKey   = @"timestamp";      //时间戳
NSString *const kAppOtherKey    = @"appOther";       //APP下载源和类型
NSString *const kDigSignKey     = @"digiSign";       //数字签名
NSString *const kAbstractsKey   = @"abstracts";      //摘要
NSString *const kPlatformKey    = @"platform";       //平台


@implementation BusinessAPI



@end
