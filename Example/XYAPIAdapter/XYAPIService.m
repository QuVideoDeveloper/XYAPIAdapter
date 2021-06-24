//
//  XYAPIService.m
//  XYAPIAdapter_Example
//
//  Created by robbin on 2021/6/22.
//  Copyright (c) 2021 Hangzhou Xiaoying Innovation Technology Co., Ltd. All rights reserved.
//

#import "XYAPIService.h"

@implementation XYAPIService

- (NSString *)domain {
    return self.currentDomain;
}

- (NSURLSessionDataTask *)GETWithPath:(NSString *)path commonParameter:(NSDictionary *)commonParameter domain:(NSString *)domain parameters:(NSDictionary *)parameters complete:(XYRequestCallback)complete {
    NSLog(@"调用方法：%@", NSStringFromSelector(_cmd));
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        complete([NSNull null], nil, nil);
    });
    return [NSURLSessionDataTask new];
}

- (NSURLSessionDataTask *)GETWithPath:(NSString *)path parameters:(NSDictionary *)parameters complete:(XYRequestCallback)complete {
    NSLog(@"调用方法：%@", NSStringFromSelector(_cmd));
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        complete([NSNull null], nil, nil);
    });
    return [NSURLSessionDataTask new];
}

- (NSURLSessionDataTask *)POSTWithPath:(NSString *)path commonParameter:(NSDictionary *)commonParameter domain:(NSString *)domain parameters:(NSDictionary *)parameters complete:(XYRequestCallback)complete {
    NSLog(@"调用方法：%@", NSStringFromSelector(_cmd));
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        complete([NSNull null], nil, nil);
    });
    return [NSURLSessionDataTask new];
}

- (NSURLSessionDataTask *)POSTWithPath:(NSString *)path parameters:(NSDictionary *)parameters complete:(XYRequestCallback)complete {
    NSLog(@"调用方法：%@", NSStringFromSelector(_cmd));
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        complete([NSNull null], nil, nil);
    });
    return [NSURLSessionDataTask new];
}

- (NSURLSessionDataTask *)requestWithType:(XYAPIRequestType)type url:(NSString *)url path:(NSString *)path commonParameter:(NSDictionary *)commonParameter parameters:(NSDictionary *)parameters complete:(XYRequestCallback)complete {
    NSLog(@"调用方法：%@", NSStringFromSelector(_cmd));
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            complete([NSNull null], nil, nil);
        });
    return [NSURLSessionDataTask new];
}

@synthesize domain;

@end
