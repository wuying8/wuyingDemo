//
//  BtnCellTableViewCell.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/6.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BtnCellTableViewCell : UITableViewCell

+(CGFloat)cellHeight;

+(NSString *)ID;

+(instancetype)cellWithTableView:(UITableView *)tableView;


@end
