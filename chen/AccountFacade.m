//
//  AccountFacade.m
//  SFPay
//
//  Created by ssf-2 on 15/6/4.
//  Copyright (c) 2015年 SF. All rights reserved.
//

#import "AccountFacade.h"
#import "AccountViewController.h"

#define kAccountStoryboard @"AccountStoryboard"

@implementation AccountFacade

+(instancetype)sharedInstance{
    static AccountFacade *accountFacade = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        accountFacade = [[AccountFacade alloc]init];
    });
    return accountFacade;
}

#pragma mark - 基本跳转的实现
-(UIViewController *)getViewControllersFromStoryboardWithIdentity:(NSString *)identity{
    UIStoryboard *accountStoryboard = [UIStoryboard storyboardWithName:kAccountStoryboard bundle:nil];
    return [accountStoryboard instantiateViewControllerWithIdentifier:identity];
}

-(UIViewController *)getViewControllersFromStoryboardWithWithTag:(AccountViewControllerTag)tag{
    NSString *identity = nil;
    switch (tag) {
        case AccountBankCardsTag:
            identity = @"BankCardsViewController";
            break;
        case AccountBillTag:
            identity = @"MyBillViewController";
            break;
        case AccountBillDetailTag:
            identity = @"BillDetailViewController";
            break;
        case AccountSFGoldTag:
            identity = @"MySFGoldViewController";
            break;
        default:
            return nil;
    }
    return [self getViewControllersFromStoryboardWithIdentity:identity];
}

-(UIViewController *)getViewControllersFromStoryboardWithClass:(Class)className{
    NSString *identity = NSStringFromClass(className);
    return [self getViewControllersFromStoryboardWithIdentity:identity];
}

#pragma mark - 跳转接口实现

//获取首页
-(UIViewController *)getTheAccountHomePageViewController{
    return [self getViewControllersFromStoryboardWithClass:[AccountViewController class]];
}

//获取内部VC (账单VC)
-(UIViewController *)getTheViewControllerWithTag:(AccountViewControllerTag)tag withParams:(NSDictionary *)paramDic{
    UIViewController *vc = [self getViewControllersFromStoryboardWithWithTag:tag];
    if ([self isDictionary:paramDic]) {
        [vc setValuesForKeysWithDictionary:paramDic];
    }
    return vc;
}

/***
    使用dictionary传递参数
 */
-(BOOL)isDictionary:(id)object{
    if (!object || ![object isKindOfClass:[NSDictionary class]]) {
        return NO;
    }else
        return YES;
}
//内部跳转
-(void)pushToControllerWithClass:(Class)controllerClass fromController:(UIViewController *)fromController withParams:(NSDictionary *)paramDic{
    UIViewController *toVC = [self getViewControllersFromStoryboardWithClass:controllerClass];
    if (!toVC) {
        return;
    }
    if ([self isDictionary:paramDic]) {
        [toVC setValuesForKeysWithDictionary:paramDic];
    }
    [fromController.navigationController pushViewController:toVC animated:YES];
}

//外部跳转
-(void)pushToControllerWithTag:(AccountViewControllerTag)tag fromController:(UIViewController *)fromController withParams:(NSDictionary *)paramDic{
    UIViewController *toVC = [self getViewControllersFromStoryboardWithWithTag:tag];
    if (!toVC) {
        return;
    }
    if ([self isDictionary:paramDic]) {
        [toVC setValuesForKeysWithDictionary:paramDic];
    }
    [fromController.navigationController pushViewController:toVC animated:YES];
}

/***
 使用block传递参数
 */
-(void)pushToControllerWithClass:(Class)controllerClass fromController:(UIViewController *)fromController withParamBlock:(ParamBlock)paramBlock{
    UIViewController *toCtr = [self getViewControllersFromStoryboardWithClass:controllerClass];
    if (paramBlock) {
        paramBlock(toCtr);
    }
    [fromController.navigationController pushViewController:toCtr animated:YES];
}

@end
