//
//  BottomTabBar.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/4.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BottomTabBar_Height 48
@interface BottomTabBar : UIView

@property (nonatomic ,strong)NSMutableArray *btnArray;


+(instancetype)tabBarWith:(CGRect)frame withBtnArray:(NSMutableArray *)btnArray;

@end
