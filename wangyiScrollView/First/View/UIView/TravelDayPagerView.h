//
//  TravelDayPagerView.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/6.
//  Copyright © 2016年 macmini. All rights reserved.
//



#import <UIKit/UIKit.h>

@protocol TravelDayPagerViewDelegate <NSObject>
@optional
- (BOOL)deallocVCsIfUnnecessary; /**< 只保留最近的5个控制器，释放其他控制器的空间，如果滑到对应位置在对其重新创建加载 **/
@end

@interface TravelDayPagerView : UIView

- (instancetype)initWithTitles:(NSArray *)titles WithVCs:(NSArray *)childVCs WithColorArrays:(NSArray *)colors;
@property (strong, nonatomic) UIColor *selectColor; /**<  选中时的颜色   **/
@property (strong, nonatomic) UIColor *unselectColor; /**<  未选中时的颜色   **/
@property (strong, nonatomic) UIColor *underlineColor; /**<  下划线的颜色   **/
@property (strong, nonatomic) UIColor *topTabColor; /**<  顶部菜单栏的背景颜色   **/
@property (copy, nonatomic) NSString *PageIndex; /**< 所在的控制器index或点击上方button的index **/
@property (weak, nonatomic) id<TravelDayPagerViewDelegate>delegate; /**< NinaPagerView代理 **/

@end
