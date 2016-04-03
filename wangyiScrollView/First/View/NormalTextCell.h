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

@interface NormalTextCell : BaseViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@property (nonatomic ,strong) BaseCellModel *model;



@end
