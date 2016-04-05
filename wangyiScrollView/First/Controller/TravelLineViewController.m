//
//  TravelLineViewController.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/5.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "TravelLineViewController.h"
#import "NinaPagerView.h"
#import "UIParameter.h"


@interface TravelLineViewController ()

@property (strong, nonatomic) NinaPagerView *ninaPagerView;

@end

@implementation TravelLineViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    self.navigationController.navigationBarHidden  = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *titleArray =   @[
                              @"第一天",
                              @"第二天",
                              @"第三天",
                              @"第四天",
                              @"第五天",
                              @"第六天",
                              //                                                  @"革镇堡",
                              //                                                  @"中山",
                              //                                                  @"人民广场",
                              //                                                  @"中山广场"
                              ];
    
    NSArray *vcsArray = @[
                          @"FirstViewController",
                          @"SecondViewController",
                          @"SecondViewController",
                          @"SecondViewController",
                          @"SecondViewController",
                          @"SecondViewController",
                          //                                               @"SeventhViewController",
                          //                                               @"EighthViewController",
                          //                                               @"NinthViewController",
                          //                          @"FirstTableView",
                          //                          @"FirstTableView",
                          //                          @"FirstTableView",
                          //                          @"FirstTableView",
                          //                          @"FirstTableView",
                          //                          @"FirstTableView",
                          //                          @"FirstTableView",
                          //                          @"FirstTableView",
                          //                          @"FirstTableView",
                          ];
    
    NSArray *colorArray = @[
                            [UIColor redColor], /**< 选中的标题颜色 Title SelectColor  **/
                            [UIColor grayColor], /**< 未选中的标题颜色  Title UnselectColor **/
                            [UIColor redColor], /**< 下划线颜色 Underline Color   **/
                            [UIColor whiteColor], /**<  上方菜单栏的背景颜色 TopTab Background Color   **/
                            ];

    
    self.ninaPagerView = [[NinaPagerView alloc]initWithTitles:titleArray WithVCs:vcsArray WithColorArrays:colorArray];
    self.ninaPagerView.frame = CGRectMake(0,64, FUll_VIEW_WIDTH, FUll_CONTENT_HEIGHT);
    [self.view addSubview:self.ninaPagerView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
