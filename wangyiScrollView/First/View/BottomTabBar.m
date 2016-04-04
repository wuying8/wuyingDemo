//
//  BottomTabBar.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/4.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "BottomTabBar.h"
#import "BottomTabBarItemModel.h"

#define TAG 1000
@interface BottomTabBar ()

@end

@implementation BottomTabBar

+ (instancetype)tabBarWith:(CGRect)frame withBtnArray:(NSMutableArray*)btnArray
{

    BottomTabBar* tabBar = [[BottomTabBar alloc] initWithFrame:frame];
    if (tabBar) {
        tabBar.backgroundColor = [UIColor whiteColor];
        tabBar.btnArray = btnArray;
        [tabBar initBtn];
    }
    return tabBar;
}

/**
 *  初始化按钮群
 */
- (void)initBtn
{
    if (self.btnArray.count > 0) {
        for (int i = 0; i < self.btnArray.count; i++) {
            UIButton* btn = [[UIButton alloc] initWithFrame : CGRectMake(SCREEN_WIDTH / self.btnArray.count * i, 0, SCREEN_WIDTH / self.btnArray.count, BottomTabBar_Height) ];
            btn.backgroundColor = [UIColor whiteColor];
            btn.tag = TAG + i;
            [btn setTitleColor:[_btnArray[i] fontColor] forState:UIControlStateNormal];
            [btn setTitle:[_btnArray[i] title] forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btn];
        }
    }
}
/**
 *  按钮点击事件
 *
 *  @param btn 被点击的按钮
 */
-(void)btnClick:(UIButton *)btn{
    BottomTabBarItemModel *model =  self.btnArray[btn.tag - TAG];
    if (model.clickBlock) {
        model.clickBlock();
    }
}

@end
