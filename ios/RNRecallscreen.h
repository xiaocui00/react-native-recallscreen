
#import <Foundation/Foundation.h>
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

@interface RNRecallscreen : NSObject <RCTBridgeModule>

- (void)catreButtonTT:(BOOL *)iscate;

- (void)startRecord:(RCTResponseSenderBlock)callback;

- (void)stopRecord:(BOOL *)isShow callback:(RCTResponseSenderBlock)callback;

@end
  