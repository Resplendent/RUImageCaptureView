//
//  RUViewController.m
//  RUImageCaptureView
//
//  Created by Benjamin Maer on 10/11/2016.
//  Copyright (c) 2016 Benjamin Maer. All rights reserved.
//

#import "RUViewController.h"

#import <ResplendentUtilities/RUConditionalReturn.h>
#import <ResplendentUtilities/CALayer+RUCornerRadius.h>
#import <ResplendentUtilities/UIView+RUUtility.h>

#import <RUImageCaptureView/RUImageCaptureView.h>





@interface RUViewController () <RUImageCaptureView_imageDataCaptureDelegate>

#pragma mark - imageCaptureView
@property (nonatomic, readonly, strong, nullable) RUImageCaptureView* imageCaptureView;
-(CGRect)imageCaptureView_frame;
@property (nonatomic, assign) BOOL imageCaptureView_isCapturing;

#pragma mark - captureButton
@property (nonatomic, readonly, strong, nullable) UIButton* captureButton;
-(CGRect)captureButton_frame;
-(void)captureButton_did_touchUpInside;

@end





@implementation RUViewController

#pragma mark - UIViewController
-(void)viewDidLoad
{
	[super viewDidLoad];

	[self.view setBackgroundColor:[UIColor blackColor]];

	_imageCaptureView = [RUImageCaptureView new];
	[self.imageCaptureView setImageDataCaptureDelegate:self];
	[self.imageCaptureView setBackgroundColor:[UIColor clearColor]];
	[self.view addSubview:self.imageCaptureView];

	_captureButton = [UIButton buttonWithType:UIButtonTypeCustom];
	[self.captureButton setBackgroundColor:[UIColor whiteColor]];
	[self.captureButton addTarget:self action:@selector(captureButton_did_touchUpInside) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:self.captureButton];
}

-(void)viewWillLayoutSubviews
{
	[super viewWillLayoutSubviews];

	[self.imageCaptureView setFrame:[self imageCaptureView_frame]];

	[self.captureButton setFrame:[self captureButton_frame]];
	[self.captureButton.layer ru_setCornerRadius_rounded_from_boundingSize:self.captureButton.bounds.size];
}

-(void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];

	[self.imageCaptureView setImageCaptureIsRunning:YES];
}

-(void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];

	[self.imageCaptureView setImageCaptureIsRunning:NO];
}

#pragma mark - RUImageCaptureView_imageDataCaptureDelegate
-(void)ruImageCaptureView:(RUImageCaptureView*)imageCaptureView didCaptureImageData:(NSData*)imageData metaData:(NSDictionary*)metaData
{
	kRUConditionalReturn(imageData == nil, YES);

	kRUConditionalReturn(self.imageCaptureView_isCapturing == false, YES);

	[self setImageCaptureView_isCapturing:NO];
}

-(void)ruImageCaptureView:(RUImageCaptureView*)imageCaptureView didFailCaptureImageDataCaptureWithError:(NSError*)error
{
	UIAlertController* const alertController =
	[UIAlertController alertControllerWithTitle:@"Oops!"
										message:@"There was an issue taking an image with your device."
								 preferredStyle:UIAlertControllerStyleAlert];
	kRUConditionalReturn(alertController == nil, YES);

	[alertController addAction:
	 [UIAlertAction actionWithTitle:@"Okay"
							  style:UIAlertActionStyleDefault
							handler:nil]];

	[self presentViewController:alertController animated:YES completion:nil];
}

#pragma mark - imageCaptureView
-(CGRect)imageCaptureView_frame
{
	return self.view.bounds;
}

#pragma mark - captureButton
-(CGRect)captureButton_frame
{
	CGFloat const dimension_length = 80.0f;

	return CGRectCeilOrigin((CGRect){
		.origin.x		= CGRectGetHorizontallyAlignedXCoordForWidthOnWidth(dimension_length, CGRectGetWidth(self.view.bounds)),
		.origin.y		= CGRectGetHeight(self.view.bounds) - dimension_length - 32.0f,
		.size.width		= dimension_length,
		.size.height	= dimension_length,
	});
}

-(void)captureButton_did_touchUpInside
{
	kRUConditionalReturn(self.imageCaptureView_isCapturing == YES, NO);

	if ([self.imageCaptureView performImageDataCapture])
	{
		[self setImageCaptureView_isCapturing:YES];
	}
}

@end
