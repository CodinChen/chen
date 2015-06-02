//
//  BaseDataModel.h
//  chen
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  系统类请求状态码
 */
#define kEErrorCode000  @"00"     //请求成功
#define kEErrorCode001  @"01"     //token非法
#define kEErrorCode002  @"02"     //session过期
#define kEErrorCode003  @"03"     //参数不合法
#define kEErrorCode004  @"04"     //数字签名错误
#define kEErrorCode005  @"05"     //摘要不匹配
#define kEErrorCode006  @"06"     //用户未登录
#define kEErrorCode007  @"07"     //系统调用异常
#define kEErrorCode008  @"08"     //加解密异常
#define kEErrorCode009  @"09"     //请求步骤非法
#define kEErrorCode010  @"10"     //业务请求数据未加密
#define kEErrorCode011  @"11"     //服务名重复
#define kEErrorCode012  @"12"     //json字符串解析异常
#define kEErrorCode013  @"13"     //响应数据不合法

@interface BaseDataModel : NSObject

@property (copy,nonatomic) NSString *data;          //返回业务数据
@property (copy,nonatomic) NSString *code;          //状态码
@property (copy,nonatomic) NSString *msg;           //状态消息
@property (copy,nonatomic) NSString *version;       //版本号
@property (copy,nonatomic) NSString *serviceType;   //功能类型
@property (copy,nonatomic) NSString *encryptType;   //加密方式
@property (copy,nonatomic) NSString *timestamp;     //时间戳
@property (copy,nonatomic) NSString *abstracts;     //摘要

/**
 *  使用此方法创建数据模型，不要使用默认的初始化方法
 *
 *  @param dictionary 初始化数据模型时传入字典
 *
 *  @return 数据模型实例
 */
-(instancetype) initWithDictionary:(NSDictionary *)dictionary;

/**
 *  解析解密后的Dada数据
 */
- (void)parseData;

@end
