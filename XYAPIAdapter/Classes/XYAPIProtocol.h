//
//  XYAPIProtocol.h
//  XYAPIAdapter
//
//  Created by robbin on 2021/6/22.
//  Copyright (c) 2021 Hangzhou Xiaoying Innovation Technology Co., Ltd. All rights reserved.
//

#ifndef XYAPIProtocol_h
#define XYAPIProtocol_h

NS_ASSUME_NONNULL_BEGIN

/// 请求的类型
typedef NS_ENUM(NSInteger, XYAPIRequestType) {
    /// GET类型
    XYAPIRequestTypeGET,
    /// POST类型
    XYAPIRequestTypePOST,
};

/*
 回调类型
 @param request 请求
 @param error 错误信息
 @param response 返回类型
 */
typedef void (^XYRequestCallback)(id request, NSError * _Nullable error, id _Nullable response);

@protocol XYAPIProtocol <NSObject>

/// 返回当前使用的域名，例如  https://xiaoying.tv
@property (nonatomic, copy, readonly, nullable) NSString * domain;

/// 发送POST接口
/// @param path 接口路径
/// @param parameters 接口业务参数
/// @param complete 回调
/// @return 任务对象
- (nullable NSURLSessionDataTask *)POSTWithPath:(NSString *)path
                                     parameters:(nullable NSDictionary *)parameters
                                       complete:(nullable XYRequestCallback)complete;

/// 发送GET接口
/// @param path 接口路径
/// @param parameters 接口业务参数
/// @param complete 回调
/// @return 任务对象
- (nullable NSURLSessionDataTask *)GETWithPath:(NSString *)path
                                    parameters:(nullable NSDictionary *)parameters
                                      complete:(nullable XYRequestCallback)complete;

/// 发送POST接口
/// @param path 接口路径
/// @param commonParameter 接口通用参数（参数替换，非覆盖）
/// @param domain 接口域名
/// @param parameters 接口业务参数
/// @param complete 回调
/// @return 任务对象
- (nullable NSURLSessionDataTask *)POSTWithPath:(NSString *)path
                                commonParameter:(nullable NSDictionary *)commonParameter
                                         domain:(nullable NSString *)domain
                                     parameters:(nullable NSDictionary *)parameters
                                       complete:(nullable XYRequestCallback)complete;

/// 发送GET接口
/// @param path 接口路径
/// @param commonParameter 接口通用参数（参数替换，非覆盖）
/// @param domain 接口域名
/// @param parameters 接口业务参数
/// @param complete 回调
/// @return 任务对象
- (nullable NSURLSessionDataTask *)GETWithPath:(NSString *)path
                               commonParameter:(nullable NSDictionary *)commonParameter
                                        domain:(nullable NSString *)domain
                                    parameters:(nullable NSDictionary *)parameters
                                      complete:(nullable XYRequestCallback)complete;

/// 全功能的发送接口
/// @param type 接口类型
/// @param url 带域名的全路径
/// @param path 接口路径
/// @param commonParameter 接口通用参数（参数替换，非覆盖）
/// @param parameters 接口业务参数
/// @param complete 回调
/// @return 任务对象
- (nullable NSURLSessionDataTask *)requestWithType:(XYAPIRequestType)type
                                               url:(NSString *)url
                                              path:(NSString *)path
                                   commonParameter:(nullable NSDictionary *)commonParameter
                                        parameters:(nullable NSDictionary *)parameters
                                          complete:(nullable XYRequestCallback)complete;

@end

NS_ASSUME_NONNULL_END

#endif /* XYAPIProtocol_h */
