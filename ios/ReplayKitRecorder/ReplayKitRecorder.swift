import Foundation
import ReplayKit

@objc(ReplayKitRecorder)
class ReplayKitRecorder: NSObject {

  private let recorder = RPScreenRecorder.shared()

  @objc
  func startRecording(_ resolve: @escaping RCTPromiseResolveBlock,
                      rejecter reject: @escaping RCTPromiseRejectBlock) {

    recorder.startRecording { error in
      if let error = error {
        reject("ERR_START", error.localizedDescription, error)
      } else {
        resolve(true)
      }
    }
  }

  @objc
  func stopRecording(_ resolve: @escaping RCTPromiseResolveBlock,
                     rejecter reject: @escaping RCTPromiseRejectBlock) {

    recorder.stopRecording { preview, error in
      if let error = error {
        reject("ERR_STOP", error.localizedDescription, error)
      } else {
        resolve(true)
      }
    }
  }
}
