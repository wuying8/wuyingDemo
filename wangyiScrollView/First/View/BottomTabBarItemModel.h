//
//  BottomTabBarItemModel.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/4.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BottomTabBarItemModel : NSObject

@property (nonatomic ,strong)NSString *title;

@property (nonatomic ,strong)UIColor *fontColor;

@property (nonatomic ,strong)UIColor *selectedFontColor;

@property (nonatomic ,copy) void(^clickBlock)();

+(instancetype)modelWithTitle:(NSString *)title FontColor:(UIColor *)fontColor;



@end
