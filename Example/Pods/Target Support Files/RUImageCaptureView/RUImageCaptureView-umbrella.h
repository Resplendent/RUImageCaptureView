#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AVCaptureDevice+RUCaptureDevices.h"
#import "AVCaptureOutput+RUGetAVCaptureConnection.h"
#import "RUImageCaptureView.h"
#import "RUImageCaptureViewProtocols.h"

FOUNDATION_EXPORT double RUImageCaptureViewVersionNumber;
FOUNDATION_EXPORT const unsigned char RUImageCaptureViewVersionString[];

