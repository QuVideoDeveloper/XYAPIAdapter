//
//  XYAPIService.h
//  XYAPIAdapter_Example
//
//  Created by robbin on 2021/6/22.
//  Copyright (c) 2021 Hangzhou Xiaoying Innovation Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYAPIProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface XYAPIService : NSObject<XYAPIProtocol>

@property (nonatomic, strong) NSString * currentDomain;

@end

NS_ASSUME_NONNULL_END
