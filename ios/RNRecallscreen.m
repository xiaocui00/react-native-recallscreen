
#import "RNRecallscreen.h"
#import <FJRePlay/FJRePlayKit.h>

#define ERROR_CLEANUP_ERROR_KEY @"E_ERROR_WHILE_CLEANING_FILES"
#define ERROR_CLEANUP_ERROR_MSG @"Error while cleaning up tmp files"

@interface RNRecallscreen ()

@property (nonatomic, copy) RCTResponseSenderBlock callback;

@end

@implementation RNRecallscreen

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(catreButtonTT:(BOOL *)iscate) {

  FJReplayKit *replaykit = [[FJReplayKit alloc] init];
//  NSLog(@"ios log finishDic %@",finishDic);
    [replaykit catreButton:iscate]
}

RCT_EXPORT_METHOD(startRecord:(RCTResponseSenderBlock)callback) {

  FJReplayKit *replaykit = [[FJReplayKit alloc] init];
//  NSLog(@"ios log finishDic %@",finishDic);
    callback(@[replaykit startRecordSuccess])
}

RCT_EXPORT_METHOD(stopRecord:(BOOL *)isShow callback:(RCTResponseSenderBlock)callback) {
  self.callback = callback;
  __weak RNRecallscreen *weakself = self;

  FJReplayKit *replaykit = [[FJReplayKit alloc] init];

  [replaykit stopRecordAndShowVideoPreviewController:isShow Success:(SuccessHomeBlock finishDic) {

//            NSString *data = [finishDic data];
            NSLog(@"ios log finishDic %@",finishDic);

            weakself.callback(@[[NSNull null], @{@"data":finishDic}]);
            weakself.callback = nil;

        } AndFaild:(FaildHomeBlock errorType) {

            weakself.callback(@[[NSNull null], @{}]);
            weakself.callback = nil;

        }];
}

@end
  