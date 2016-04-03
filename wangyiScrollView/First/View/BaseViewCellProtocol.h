//
//  BaseViewCellProtocol.h
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseViewCellProtocol <NSObject>

/**
 *  cell对应的高
 *
 *  @return Height
 */
+(CGFloat)cellHeight;

/**
 *  cell对应的ID
 *
 *  @return ID
 */
+(NSString *)ID;

/**
 *  类方法创建个cell对象
 *
 *  @param tableView tableView
 *  @param indexPath indexPath
 *
 *  @return cell对象
 */
+(instancetype)cellWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath;

@end
