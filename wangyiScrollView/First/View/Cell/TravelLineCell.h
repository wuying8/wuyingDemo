//
//  TravelLineCell.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/6.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "BaseViewCell.h"

@class TravelLineCell;

@protocol TravelLineCellDelegate <NSObject>

- (void)removeTravelLine: (TravelLineCell *)cell;
@end

@interface TravelLineCell : BaseViewCell

@property (nonatomic ,weak) id<TravelLineCellDelegate> delegate;

@end
