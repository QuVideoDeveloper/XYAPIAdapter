//
//  XYAPIAdapterManagerTests.m
//  XYAPIAdapter_Tests
//
//  Created by robbin on 2021/6/23.
//  Copyright © 2021 irobbin1024. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "XYAPIService.h"
#import "XYAPIAdapterManager.h"

@interface XYAPIAdapterManagerTests : XCTestCase

@property (nonatomic, strong) XYAPIService * service;

@end

@implementation XYAPIAdapterManagerTests

- (void)setUp {
    self.service = [XYAPIService new];
    self.service.currentDomain = @"https://www.xiaoying.tv";
    [XYAPIAdapterManager sharedInstance].APIAdapter = self.service;
}

- (void)testDomain {
    XCTAssertTrue([[XYAPIAdapterManager sharedInstance].domain isEqualToString:@"https://www.xiaoying.tv"]);
}

- (void)testAPIPostNormal {
    XCTestExpectation * expectation = [[XCTestExpectation alloc] initWithDescription:@"等待"];

    [[XYAPIAdapterManager sharedInstance] POSTWithPath:@"/path1/path2" parameters:@{@"key" : @"value"} complete:^(id  _Nonnull request, NSError * _Nullable error, id  _Nullable response) {
        [expectation fulfill];
    }];
    
    [self waitForExpectations:@[expectation] timeout:5];
}

- (void)testAPIPostFull {
    XCTestExpectation * expectation = [[XCTestExpectation alloc] initWithDescription:@"等待"];

    [[XYAPIAdapterManager sharedInstance] POSTWithPath:@"/path1/path2" commonParameter:@{@"key" : @"value"} domain:@"https://www.xiaoying.tv" parameters:@{@"key" : @"value"} complete:^(id  _Nonnull request, NSError * _Nullable error, id  _Nullable response) {
        [expectation fulfill];
    }];
    
    [self waitForExpectations:@[expectation] timeout:5];
}

- (void)testAPIGetNormal {
    XCTestExpectation * expectation = [[XCTestExpectation alloc] initWithDescription:@"等待"];

    [[XYAPIAdapterManager sharedInstance] GETWithPath:@"/path1/path2" parameters:@{@"key" : @"value"} complete:^(id  _Nonnull request, NSError * _Nullable error, id  _Nullable response) {
        [expectation fulfill];
    }];
    
    [self waitForExpectations:@[expectation] timeout:5];
}

- (void)testAPIGetFull {
    XCTestExpectation * expectation = [[XCTestExpectation alloc] initWithDescription:@"等待"];

    [[XYAPIAdapterManager sharedInstance] GETWithPath:@"/path1/path2" commonParameter:@{@"key" : @"value"} domain:@"https://www.xiaoying.tv" parameters:@{@"key" : @"value"} complete:^(id  _Nonnull request, NSError * _Nullable error, id  _Nullable response) {
        [expectation fulfill];
    }];
    
    [self waitForExpectations:@[expectation] timeout:5];
}

- (void)testAPISendFull {
    XCTestExpectation * expectation = [[XCTestExpectation alloc] initWithDescription:@"等待"];

    [[XYAPIAdapterManager sharedInstance] requestWithType:XYAPIRequestTypeGET url:@"https://www.xiaoying.tv" path:@"/path1/path2" commonParameter:@{@"key" : @"value"} parameters:@{@"key" : @"value"} complete:^(id  _Nonnull request, NSError * _Nullable error, id  _Nullable response) {
        [expectation fulfill];
    }];
    
    [self waitForExpectations:@[expectation] timeout:5];
}

@end
