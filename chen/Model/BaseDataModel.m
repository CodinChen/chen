//
//  BaseDataModel.m
//  chen
//
//  Created by ssf-2 on 15-5-28.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import "BaseDataModel.h"
#import "GlobalManager.h"
#import "NSString+JsonToDictionary.h"
#import "BusinessAPI.h"

@implementation BaseDataModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [[[self class] alloc] init];
    if ( self )
    {
        [self setAttributeWithDictionary:dictionary];
    }
    return self;
}

- (void)setAttributeWithDictionary:(NSDictionary *)dictionary
{
    if ( !dictionary || ![dictionary isKindOfClass:[NSDictionary class]] )
    {
        return;
    }
    else
    {
        [self setValuesForKeysWithDictionary:dictionary];
    }
}

- (NSString *)checkValue:(id)value
{
    if ([value isKindOfClass:[NSNull class]] || !value )
    {
        return @"";
    }
    else
    {
        return [NSString stringWithFormat:@"%@", value];
    }
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    NSString *tempValue = [self checkValue:value];
    [super setValue:tempValue forKey:key];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
}



- (NSString *)dataKeyWith:(NSString *)encryptType
{
    NSString *key = kEmptyChar;
    EncryptType type = [encryptType integerValue];
    switch (type)
    {
        case ENoEncrypt:
            return key;
            break;
        case ENotHasTokenEncrypt:
        {
            NSString *tempVersion     = self.version;
            NSString *tempServiceType = self.serviceType;
            NSString *tempTimestamp   = self.timestamp;
            
            NSString *keyTemp = [NSString stringWithFormat:@"%@%@%@",tempVersion,tempServiceType,tempTimestamp];
//            key = [DES3Util md5:[NSString stringWithFormat:@"%@%@",[DES3Util md5:keyTemp], keyTemp]];
            return key;
        }
            break;
        case EHasTokenEncrypt:
        {
            NSString *secretKey = [[GlobalManager shareInstance] secretKey];
//            key = [DES3Util md5:[NSString stringWithFormat:@"%@%@",[DES3Util md5:secretKey], secretKey]];
            return key;
        }
            break;
        default:
            break;
    }
}

- (NSString *)decodeDataWith:(NSString *)data
{
    if (!data) {
        return kEmptyChar;
    }
    
    NSString *key = [self dataKeyWith:self.encryptType];
    if ([data length] > 0 )
    {
        if (key && [key length] > 0)
        {
//            data = [DES3Util decrypt:data withKey:key];
        }
        else
        {
//            data = [[NSString alloc] initWithData:[GTMBase64 decodeString:data]
//                                         encoding:NSUTF8StringEncoding];
        }
        return data;
    }
    else
    {
        return kEmptyChar;
    }
}

- (void)decodeData
{
    self.data = [self decodeDataWith:self.data];
}

- (void)parseData
{
    if (!self.data) {
        return;
    }
    
    if (![self.encryptType isEqualToString:@"0"]) {
        [self decodeData];
    }
    
    NSDictionary *dic = [self.data jsonToDictionary];
    [self setAttributeWithDictionary:dic];
    
}

- (void)dealloc
{
    NSLog(@"%s %@", __FUNCTION__, NSStringFromClass([self class]));
}


@end
