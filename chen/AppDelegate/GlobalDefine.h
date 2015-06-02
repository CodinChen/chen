//
//  GlobalDefine.h
//  chen
//
//  Created by ssf-2 on 15-5-27.
//  Copyright (c) 2015年 CH. All rights reserved.
//

#ifndef GlobalDefine_h
#define GlobalDefine_h

/**
 *  视图布局ID
 */
typedef NS_ENUM(NSUInteger, ViewLayoutID)
{
    /**
     *  首页视图布局ID
     */
    EViewLayoutHomeMainId,
    //消息
    
    /**
     *  资产模块视图布局ID
     */
    EViewLayoutAssetsMainId = 2314,             //资产首页
    
    //我的
    EViewLayoutMyselfMainId,
};

#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width




#endif
