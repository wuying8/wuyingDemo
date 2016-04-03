//
//  BaseViewCell.m
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "BaseViewCell.h"

@implementation BaseViewCell

+(CGFloat)cellHeight{
    return 0.f;
}

/**
 *  cell对应的ID
 *
 *  @return ID
 */
+(NSString *)ID{
    return nil;
}

/**
 *  类方法创建个cell对象
 *
 *  @param tableView tableView
 *  @param indexPath indexPath
 *
 *  @return cell对象
 */
+(instancetype)cellWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

@end
