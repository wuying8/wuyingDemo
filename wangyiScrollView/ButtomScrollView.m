//
//  ButtomScrollView.m
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//


#import "ButtomScrollView.h"
#import "TopScrollView.h"


@implementation ButtomScrollView
@synthesize viewNameArray;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.delegate = self;
        self.backgroundColor = [UIColor lightGrayColor];
        self.pagingEnabled = YES;
        self.userInteractionEnabled = YES;
        self.bounces = NO;
        
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        
        userContentOffsetX = 0;
    }
    return self;
}

+ (ButtomScrollView *)getInstance{
    static ButtomScrollView *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 44)];
    });
    return instance;
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    userContentOffsetX = scrollView.contentOffset.x;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if(userContentOffsetX < scrollView.contentOffset.x){
        isLeftScroll = YES;
    }else{
        isLeftScroll = NO;
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    [self adjustTopScrollViewButton:scrollView];
    [self loadData];
}

//调整按钮显示
- (void)adjustTopScrollViewButton:(UIScrollView *)scrollView{
    [[TopScrollView getInstance] setButttonUnSelect];
    [TopScrollView getInstance].scrollViewSelectedID = POSITION + 100;
    [[TopScrollView getInstance] setButtonSelect];
    [[TopScrollView getInstance] setScrollViewContentOffset];
}

- (void)initWithViews{
    for(int i = 0; i < [viewNameArray count]; i++){
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50 + CONTENTSIZEX*i, 100, CONTENTSIZEX, self.frame.size.height - 44)];
        label.tag = 200 + i;
        if(i == 0){
            label.text = [viewNameArray objectAtIndex:i];
        }
        [self addSubview:label];
    }
    
    self.contentSize = CGSizeMake(CONTENTSIZEX*[viewNameArray count], self.frame.size.height - 44);
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    [self loadData];
}

- (void)loadData{
    CGFloat pageWidth = self.frame.size.width;
    int page = floor((self.contentOffset.x - pageWidth/viewNameArray.count)/pageWidth) + 1;
    UILabel *label = (UILabel *)[self viewWithTag:page + 200];
    label.text = [NSString stringWithFormat:@"%@", [viewNameArray objectAtIndex:page]];
}

@end