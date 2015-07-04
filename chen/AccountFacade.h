//
//  AccountFacade.h
//  SFPay
//
//  Created by ssf-2 on 15/6/4.
//  Copyright (c) 2015年 SF. All rights reserved.
//

/**
 不同的地方：
 1、资讯列表顺房金cell
 2、银行卡列表多个H5入口
 */

#define ACCOUNT_ZXSFPAY 0 //

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    
    AccountBankCardsTag = 1,
    AccountBillTag,        //账单入口
    AccountBillDetailTag,  //账单详情
    AccountSFGoldTag,      //顺丰金入口
    
} AccountViewControllerTag;//资产对外接口使用

typedef void(^ParamBlock)(UIViewController *vc);//设置参数

@interface AccountFacade : NSObject

+(instancetype)sharedInstance;

/**
 获取资产首页
 */
-(UIViewController *)getTheAccountHomePageViewController;

/**
 获取资产模块内部VC  (主要针对 账单/银行卡列表 界面压栈使用)
 */
-(UIViewController *)getTheViewControllerWithTag:(AccountViewControllerTag)tag withParams:(NSDictionary *)paramDic;

/**
 * @brief 外部跳转入模块Dic
 * @param tag              跳入VC的tag值
 * @param fromController   当前VC
 * @param paramDic         参数字典
 */
-(void)pushToControllerWithTag:(AccountViewControllerTag)tag fromController:(UIViewController *)fromController withParams:(NSDictionary*)paramDic;



/**
 * @brief  模块内部跳转Dic
 *
 * @param controllerClass  下个VC的class
 * @param fromController   当前VC
 * @param paramDic         参数字典
 *
 */
-(void)pushToControllerWithClass:(Class)controllerClass fromController:(UIViewController *)fromController withParams:(NSDictionary*)paramDic;

/**
 * @brief  模块内部跳转Block
 *
 * @param controllerClass  下个VC的class
 * @param fromController   当前VC
 * @param paramBlock       参数Block
 *
 */
-(void)pushToControllerWithClass:(Class)controllerClass fromController:(UIViewController *)fromController withParamBlock:(ParamBlock)paramBlock;

@end
