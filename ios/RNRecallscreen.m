
#import "RNRecallscreen.h"
#import <FJRePlay/FJRePlayKit.h>

@interface RNRecallscreen ()

@property (nonatomic, copy) RCTResponseSenderBlock callback;

@end

@implementation RNRecallscreen

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(catreButtonTT:(BOOL)iscate) {

  FJReplayKit *replaykit = [FJReplayKit sharedReplay];
//  NSLog(@"ios log finishDic %@",finishDic);
    [replaykit catreButton:iscate];
}

RCT_EXPORT_METHOD(startRecord:(RCTResponseSenderBlock)callback) {
    self.callback = callback;
    __weak RNRecallscreen *weakself = self;
  FJReplayKit *replaykit = [FJReplayKit sharedReplay];
//  NSLog(@"ios log finishDic %@",finishDic);
    [replaykit startRecordSuccess:^(NSString *data) {
        weakself.callback(@[@{@"data":data}]);
        weakself.callback = nil;
    } AndFaild:^(NSString *erro) {
        weakself.callback(@[@{@"data":erro}]);
        weakself.callback = nil;
    }];
}

RCT_EXPORT_METHOD(stopRecord:(BOOL)isShow callback:(RCTResponseSenderBlock)callback) {
  self.callback = callback;
  __weak RNRecallscreen *weakself = self;

  FJReplayKit *replaykit = [FJReplayKit sharedReplay];
    
  [replaykit stopRecordAndShowVideoPreviewController:isShow Success:^(NSString *finishDic) {

//            NSString *data = [finishDic data];
//            NSLog(@"ios log finishDic %@",finishDic);

            weakself.callback(@[@{@"data":finishDic}]);
            weakself.callback = nil;

        } AndFaild:^(NSString *errorType) {
            weakself.callback(@[@{@"data":errorType}]);
            weakself.callback = nil;

        }];
}

@end
  