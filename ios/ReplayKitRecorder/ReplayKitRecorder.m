#import "ReplayKitRecorder.h"

@implementation ReplayKitRecorder

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(startRecording:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(@(YES));
}

RCT_EXPORT_METHOD(stopRecording:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(@(YES));
}

@end
