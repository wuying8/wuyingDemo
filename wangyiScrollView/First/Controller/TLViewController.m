//
//  TLViewController.m 
//  wangyiScrollView
//
//  Created by 无影 on 16/4/5.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "TLViewController.h"
#import "UIParameter.h"
#import "NSString+NumToString.h"
#import "TravelDayPagerView.h"
#import "BottomTabBarItemModel.h"
#import "BottomTabBar.h"

@interface TLViewController (){
    NSMutableArray *_titleArray;
    NSMutableArray *_vcsArray;
    NSArray *_colorArray;
}

@property (strong, nonatomic) TravelDayPagerView *ninaPagerView;



@end

@implementation TLViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initModel];
    [self initUI];
    [self initTabBar];
}




/**
 *  初始化视图UI配置
 */
-(void)initUI{
    //顶部栏
    self.title = @"线路描述";
    //uitableView背景色
    self.view.backgroundColor = WYColor(239, 239, 244);
    
    self.ninaPagerView = [[TravelDayPagerView alloc]initWithTitles:_titleArray WithVCs:_vcsArray WithColorArrays:_colorArray];
    self.ninaPagerView.frame = CGRectMake(0,64, FUll_VIEW_WIDTH, NinaPagerContent - BottomTabBar_Height);
    [self.view addSubview:self.ninaPagerView];

}

/**
 *  初始化天数模型
 */
-(void)initModel{
    _titleArray = [NSMutableArray array];
    _vcsArray = [NSMutableArray array];
    
    if (self.dayCount < 1) return;
    
    for (int i = 1; i< self.dayCount + 1; i++) {
        //转换汉字天数
        NSString *dayNum = [NSString translation:[NSString stringWithFormat:@"%d",i]];
        NSString *dayTitle = [NSString stringWithFormat:@"第%@天",dayNum];
        
        [_titleArray addObject:dayTitle];
        [_vcsArray addObject:@"TLiManagerController"];
    }
    

    
    _colorArray = @[
                            [UIColor redColor], /**< 选中的标题颜色 Title SelectColor  **/
                            [UIColor grayColor], /**< 未选中的标题颜色  Title UnselectColor **/
                            [UIColor redColor], /**< 下划线颜色 Underline Color   **/
                            [UIColor whiteColor], /**<  上方菜单栏的背景颜色 TopTab Background Color   **/
                            ];
    

}


/**
 *  添加底部栏
 */
- (void)initTabBar
{
    WS(ws);
    //1.取消按钮
    BottomTabBarItemModel* cancelModel = [BottomTabBarItemModel modelWithTitle:@"线路预览" FontColor:UIColorFromRGB(0xff5d5d)];
    cancelModel.clickBlock = ^() {
        NSLog(@"取消行程");
        
    };
    //2.下一步按钮
    BottomTabBarItemModel* nextModel = [BottomTabBarItemModel modelWithTitle:@"下一步" FontColor:UIColorFromRGB(0xff5d5d)];
    nextModel.clickBlock = ^() {
        NSLog(@"下一步");
    };
    
    NSMutableArray* array = [NSMutableArray arrayWithArray:@[ cancelModel, nextModel ]];
    BottomTabBar* tabBar = [BottomTabBar tabBarWith:CGRectMake(0, SCREEN_HEIGHT - BottomTabBar_Height, SCREEN_WIDTH, BottomTabBar_Height) withBtnArray:array];
    [self.view addSubview:tabBar];
}



@end
