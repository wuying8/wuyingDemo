//
//  CameraTools.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/5.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "CameraTools.h"
#import <AVFoundation/AVFoundation.h>

@implementation CameraTools{
    
}

+(instancetype)getInstance{

    static CameraTools *cameraToolsSample = nil;
    
    @synchronized(self)
    {
        if (!cameraToolsSample)
            cameraToolsSample = [[CameraTools alloc] init];
        return cameraToolsSample;
    }
}

//
//-(void)openSystemCameraWithController:(UIViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate> *)controller{
//    [self checkCameraAvailability:^(BOOL auth) {
//        if (!auth) {
//            NSLog(@"没有访问相机权限");
//            return;
//        }
//        [picker dismissViewControllerAnimated:NO completion:nil];
//        UIImagePickerController* cameraUI = [UIImagePickerController new];
//        cameraUI.allowsEditing = NO;
//        cameraUI.delegate = controller;
//        cameraUI.sourceType = UIImagePickerControllerSourceTypeCamera;
//        cameraUI.cameraFlashMode = UIImagePickerControllerCameraFlashModeAuto;
//        
//        [controller presentViewController:cameraUI animated:YES completion:nil];
//    }];
//    
//    
//}

- (void)checkCameraAvailability:(void (^)(BOOL auth))block
{
    BOOL status = NO;
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (authStatus == AVAuthorizationStatusAuthorized) {
        status = YES;
    }
    else if (authStatus == AVAuthorizationStatusDenied) {
        status = NO;
    }
    else if (authStatus == AVAuthorizationStatusRestricted) {
        status = NO;
    }
    else if (authStatus == AVAuthorizationStatusNotDetermined) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            if (granted) {
                if (block) {
                    block(granted);
                }
            }
            else {
                if (block) {
                    block(granted);
                }
            }
        }];
        return;
    }
    if (block) {
        block(status);
    }
}


@end
