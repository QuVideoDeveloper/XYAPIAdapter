//
//  XYAPIAdapterManager.m
//  XYAPIAdapter
//
//  Created by robbin on 2021/6/22.
//  Copyright (c) 2021 Hangzhou Xiaoying Innovation Technology Co., Ltd. All rights reserved.
//

#import "XYAPIAdapterManager.h"

@implementation XYAPIAdapterManager

+ (instancetype)sharedInstance {
    static dispatch_once_t pred;
    static XYAPIAdapterManager *sharedInstance;
    
    dispatch_once(&pred, ^{
        sharedInstance = [[XYAPIAdapterManager alloc] init];
    });
    
    return sharedInstance;
}

- (NSString *)domain {
    return self.APIAdapter.domain;
}

- (NSURLSessionDataTask *)POSTWithPath:(NSString *)path
                            parameters:(NSDictionary *)parameters
                              complete:(XYRequestCallback)complete {
    NSAssert(self.APIAdapter, @"请给XYAPIAdapterManager赋值APIAdapter代理参数");
    return [self.APIAdapter POSTWithPath:path
                              parameters:parameters
                                complete:complete];
}

- (NSURLSessionDataTask *)GETWithPath:(NSString *)path
                           parameters:(NSDictionary *)parameters
                             complete:(XYRequestCallback)complete {
    NSAssert(self.APIAdapter, @"请给XYAPIAdapterManager赋值APIAdapter代理参数");
    return [self.APIAdapter GETWithPath:path
                             parameters:parameters
                               complete:complete];
}

- (NSURLSessionDataTask *)POSTWithPath:(NSString *)path
                       commonParameter:(NSDictionary *)commonParameter
                                domain:(NSString *)domain
                            parameters:(NSDictionary *)parameters
                              complete:(XYRequestCallback)complete {
    NSAssert(self.APIAdapter, @"请给XYAPIAdapterManager赋值APIAdapter代理参数");
    return [self.APIAdapter POSTWithPath:path
                         commonParameter:commonParameter
                                  domain:domain
                              parameters:parameters
                                complete:complete];
}

- (NSURLSessionDataTask *)GETWithPath:(NSString *)path
                      commonParameter:(NSDictionary *)commonParameter
                               domain:(NSString *)domain
                           parameters:(NSDictionary *)parameters
                             complete:(XYRequestCallback)complete {
    NSAssert(self.APIAdapter, @"请给XYAPIAdapterManager赋值APIAdapter代理参数");
    return [self.APIAdapter GETWithPath:path
                        commonParameter:commonParameter
                                 domain:domain
                             parameters:parameters
                               complete:complete];
}

- (NSURLSessionDataTask *)requestWithType:(XYAPIRequestType)type
                                      url:(NSString *)url
                                     path:(NSString *)path
                          commonParameter:(NSDictionary *)commonParameter
                               parameters:(NSDictionary *)parameters
                                 complete:(XYRequestCallback)complete {
    NSAssert(self.APIAdapter, @"请给XYAPIAdapterManager赋值APIAdapter代理参数");
    return [self.APIAdapter requestWithType:type
                                        url:url
                                       path:path
                            commonParameter:commonParameter
                                 parameters:parameters
                                   complete:complete];
}

@end
