//
//  CameraTools.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/5.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CameraTools : NSObject

+(instancetype)getInstance;

//+(void)openSystemCameraWithDelegate:(id)delegate;

- (void)checkCameraAvailability:(void (^)(BOOL auth))block;

@end
