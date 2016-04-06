//
//  TravelLineCell.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/6.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "TravelLineCell.h"

#define TravelLineCell_ID @"TravelLineCell"
#define TravelLineCell_Height 60

#define TAG_DelectBtn 1001
#define TAG_LocaltionBtn 1002
@interface TravelLineCell ()

@property (weak, nonatomic) IBOutlet UIButton *lineTitleBtn;

@property (weak, nonatomic) IBOutlet UILabel *lineContentL;

@property (weak, nonatomic) IBOutlet UIButton *delectBtn;
@end

@implementation TravelLineCell

+(CGFloat)cellHeight{
    return TravelLineCell_Height;
}

+(NSString *)ID{
    return TravelLineCell_ID;
}

+(instancetype)cellWithTableView:(UITableView *)tableView{
    TravelLineCell *cell = [tableView dequeueReusableCellWithIdentifier:TravelLineCell_ID];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:TravelLineCell_ID
                                                     owner:nil
                                                   options:nil];
        
        for (id oneObject in nib) {
            if ([oneObject isKindOfClass:[TravelLineCell class]]) {
                cell = (TravelLineCell *)oneObject;
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
                cell.contentView.userInteractionEnabled = YES;
                cell.delectBtn.tag = TAG_DelectBtn;
                cell.lineTitleBtn.tag = TAG_LocaltionBtn;
                [cell.delectBtn addTarget:cell action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
                [cell.lineTitleBtn addTarget:cell action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
           
            }
        }
    }
    return cell;
}

-(void)awakeFromNib{
    [super awakeFromNib];
   
}

/**
 *  按钮点击
 *
 *  @param sender <#sender description#>
 */
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == TAG_DelectBtn) {
        if ([self.delegate respondsToSelector:@selector(removeTravelLine:)]) {
            [self.delegate removeTravelLine:self];
        }
    }
}



@end
