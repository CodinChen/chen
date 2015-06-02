//
//  BaseLayoutView.h
//  chen
//
//  Created by ssf-2 on 15-5-27.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalDefine.h"
#import "ViewLayoutDefine.h"

typedef void(^tableViewActionBlock)(NSIndexPath *indexPath);

@interface BaseLayoutView : UIView
{
@protected
    dispatch_block_t     _actionBlock;
    tableViewActionBlock _tableViewActionBlock;
}

/**
 *  布局视图 
 */
- (void) viewLayout;

/**
 *  自定xib加载布局视图
 *
 *  @param bibNamed xib名称
 */
- (void) loadWithNib:(NSString *)bibNamed;


/**
 *  布局视图响应非列表事件
 *
 *  @param actionBlock 响应事件Block
 */
- (void)addEventActionBlock:(dispatch_block_t)actionBlock;

/**
 *  布局视图响应列表事件事件
 *
 *  @param tableViewActionBlock 响应事件Block
 */
- (void)addTableViewActionBlock:(tableViewActionBlock)tableViewActionBlock;


/**
 *  刷新视图布局
 *
 *  @param model 数据模型
 */
//- (void)refreshViewLayout:(BaseDataModel *)model;


@end
