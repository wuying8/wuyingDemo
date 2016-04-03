//
//  ButtomScrollView.h
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtomScrollView : UIScrollView<UIScrollViewDelegate>{
    NSMutableArray *viewNameArray;
    CGFloat userContentOffsetX;
    BOOL isLeftScroll;
}

@property (nonatomic, retain) NSArray *viewNameArray;

+ (ButtomScrollView *)getInstance;

- (void)initWithViews;

- (void)loadData;


@end