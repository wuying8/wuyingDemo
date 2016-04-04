//
//  NormalTextCell.h
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewCell.h"
#import "BaseCellModel.h"
#import "HXTagsView.h"

@interface NormalTextCell : BaseViewCell

//@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (nonatomic ,strong) UILabel *titleLabel;

//@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (nonatomic ,strong) UILabel *contentLabel;

@property (nonatomic ,strong) HXTagsView *tagsView;

@property (nonatomic ,strong) BaseCellModel *model;



@end
