//
//  ViewController.m
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "ViewController.h"
#import "TopScrollView.h"
#import "ButtomScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIImageView *topShadowImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 44, 320, 5)];
    [topShadowImageView setImage:[UIImage imageNamed:@"top_background_shadow.png"]];
    [self.view addSubview:topShadowImageView];
    
    TopScrollView *topScrollView = [TopScrollView getInstance];
    ButtomScrollView *buttomScrollView = [ButtomScrollView getInstance];
    
    topScrollView.titleArray = @[@"苹果中国", @"iCloud", @"新浪微薄", @"维基百科", @"百度", @"中国雅虎", @"新闻", @"流行"];
    buttomScrollView.viewNameArray = @[@"苹果中国", @"iCloud", @"新浪微薄", @"维基百科", @"百度", @"中国雅虎", @"新闻", @"流行"];
    
    [self.view addSubview:topScrollView];
    [self.view addSubview:buttomScrollView];
    
    [topScrollView initWithTitleButtons];
    [buttomScrollView initWithViews];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
