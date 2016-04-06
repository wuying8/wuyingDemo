//
//  TravelLineFooterCell.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/6.
//  Copyright © 2016年 macmini. All rights reserved.
//
#import "TravelLineFooterCell.h"

#define TravelLineFooterCell_Height 44
#define TravelLineFooterCell_ID     @"TravelLineFooterCell"

@interface TravelLineFooterCell ()

@end

@implementation TravelLineFooterCell

+(CGFloat)cellHeight{
    return TravelLineFooterCell_Height;
}

+(NSString *)ID{
    return TravelLineFooterCell_ID;
}

+(instancetype)cellWithTableView:(UITableView *)tableView{
    TravelLineFooterCell *cell = [tableView dequeueReusableCellWithIdentifier:TravelLineFooterCell_ID];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:TravelLineFooterCell_ID
                                                     owner:nil
                                                   options:nil];
        
        for (id oneObject in nib) {
            if ([oneObject isKindOfClass:[TravelLineFooterCell class]]) {
                cell = (TravelLineFooterCell *)oneObject;
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
                
            }
        }
    }
    return cell;
}



@end
