//
//  BottomTabBarItemModel.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/4.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "BottomTabBarItemModel.h"

@implementation BottomTabBarItemModel

+(instancetype)modelWithTitle:(NSString *)title FontColor:(UIColor *)fontColor{
    BottomTabBarItemModel *model = [[BottomTabBarItemModel alloc]init];
    model.title     = title;
    model.fontColor = fontColor;
    return model;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fontColor = [UIColor redColor];
    }
    return self;
}

@end
