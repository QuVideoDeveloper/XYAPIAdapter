# XYAPIAdapter

[![CI Status](https://img.shields.io/travis/irobbin1024/XYAPIAdapter.svg?style=flat)](https://travis-ci.org/irobbin1024/XYAPIAdapter)
[![Version](https://img.shields.io/cocoapods/v/XYAPIAdapter.svg?style=flat)](https://cocoapods.org/pods/XYAPIAdapter)
[![License](https://img.shields.io/cocoapods/l/XYAPIAdapter.svg?style=flat)](https://cocoapods.org/pods/XYAPIAdapter)
[![Platform](https://img.shields.io/cocoapods/p/XYAPIAdapter.svg?style=flat)](https://cocoapods.org/pods/XYAPIAdapter)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

XYAPIAdapter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'XYAPIAdapter'
```

## 用法

### 业务端配置

```objective-c
self.APIService = [XYAPIService new];
[XYAPIAdapterManager sharedInstance].APIAdapter = self.APIService;
```

XYAPIService 是业务层的一个发送API接口的类，实现了 XYAPIProtocol 协议

```objective-c
@interface XYAPIService : NSObject<XYAPIProtocol>

@property (nonatomic, strong) NSString * currentDomain;

@end
```

### 使用端用法

```objective-c
[[XYAPIAdapterManager sharedInstance] GETWithPath:@"/1/2/3" parameters:@{} complete:^(id  _Nonnull request, NSError * _Nullable error, id  _Nullable response) {
        
}];
```

XYAPIAdapterManager 同样实现了XYAPIProtocol 协议，可以直接调用POST、GET等方法

## Author

irobbin1024, longbin.lai@quvideo.com

## License

XYAPIAdapter is available under the MIT license. See the LICENSE file for more info.
