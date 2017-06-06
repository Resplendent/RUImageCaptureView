//
//  RUImageCaptureView.h
//  Camerama
//
//  Created by Benjamin Maer on 11/20/14.
//  Copyright (c) 2014 Camerama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RUImageCaptureViewProtocols.h"
#import <AVFoundation/AVFoundation.h>





@interface RUImageCaptureView : UIView

#pragma mark - imageCapture
@property (nonatomic, weak, nullable) id<RUImageCaptureView_imageDataCaptureDelegate> imageDataCaptureDelegate;
-(BOOL)performImageDataCapture; //Returns TRUE if attempt was made, otherwise FALSE.

@property (nonatomic, assign) BOOL imageCaptureIsRunning; //Shouldn't be used to disable camera streaming. If disabled, cannot capture an image from it.

#pragma mark - TapToFocus
@property (nonatomic, readonly) BOOL tapToFocusIsSupported;
@property (nonatomic, assign) BOOL enableTapToFocus;
@property (nonatomic, assign) CGSize tapToFocusSize;
@property (nonatomic, strong, nullable) UIColor* tapToFocusBorderColor;

#pragma mark - flash
@property (nonatomic, readonly) BOOL flashAvailable;
@property (nonatomic, assign) AVCaptureFlashMode flashMode;

#pragma mark - captureDevicePosition
@property (nonatomic, assign) AVCaptureDevicePosition captureDevicePosition;

#pragma mark - interfaceOrientation
+(UIInterfaceOrientation)interfaceOrientationForImageOrientationFromInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
																   captureDevicePosition:(AVCaptureDevicePosition)captureDevicePosition;

@end
