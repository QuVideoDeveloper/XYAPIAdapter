//
//  XYAPIAdapterManager.h
//  XYAPIAdapter
//
//  Created by robbin on 2021/6/22.
//  Copyright (c) 2021 Hangzhou Xiaoying Innovation Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYAPIProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface XYAPIAdapterManager : NSObject<XYAPIProtocol>

/// 代理对象，由业务端赋值
@property (nonatomic, weak, nullable) id<XYAPIProtocol> APIAdapter;

+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
