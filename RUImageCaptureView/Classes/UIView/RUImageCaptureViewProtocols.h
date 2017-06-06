//
//  RUImageCaptureViewProtocols.h
//  Camerama
//
//  Created by Benjamin Maer on 11/20/14.
//  Copyright (c) 2014 Camerama. All rights reserved.
//

#import <Foundation/Foundation.h>





@class RUImageCaptureView;





@protocol RUImageCaptureView_imageDataCaptureDelegate <NSObject>

-(void)ruImageCaptureView:(nonnull RUImageCaptureView*)imageCaptureView didCaptureImageData:(nonnull NSData*)imageData metaData:(nonnull NSDictionary*)metaData;
-(void)ruImageCaptureView:(nonnull RUImageCaptureView*)imageCaptureView didFailCaptureImageDataCaptureWithError:(nonnull NSError*)error;

@end
