//
//  XYViewController.m
//  XYAPIAdapter
//
//  Created by irobbin1024 on 06/22/2021.
//  Copyright (c) 2021 Hangzhou Xiaoying Innovation Technology Co., Ltd. All rights reserved.
//

#import "XYViewController.h"
#import "XYAPIAdapterManager.h"
#import "XYAPIService.h"

@interface XYViewController ()

@property (nonatomic, strong) XYAPIService * APIService;

@end

@implementation XYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.APIService = [XYAPIService new];
    [XYAPIAdapterManager sharedInstance].APIAdapter = self.APIService;
	
    [self startRequest];
}

- (void)startRequest {
    [[XYAPIAdapterManager sharedInstance] GETWithPath:@"/1/2/3" parameters:@{} complete:^(id  _Nonnull request, NSError * _Nullable error, id  _Nullable response) {
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
