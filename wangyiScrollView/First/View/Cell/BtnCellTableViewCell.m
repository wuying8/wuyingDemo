//
//  BtnCellTableViewCell.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/6.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "BtnCellTableViewCell.h"

@implementation BtnCellTableViewCell

+(CGFloat)cellHeight{
    return 60;
}

+(NSString *)ID{
    return @"BtnCellTableViewCell";
}

+(instancetype)cellWithTableView:(UITableView *)tableView{
    BtnCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BtnCellTableViewCell"];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"BtnCellTableViewCell"
                                                     owner:nil
                                                   options:nil];
        
        for (id oneObject in nib) {
            if ([oneObject isKindOfClass:[BtnCellTableViewCell class]]) {
                cell = (BtnCellTableViewCell *)oneObject;
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
                
            }
        }
    }
    return cell;
}

-(void)awakeFromNib{
    [super awakeFromNib];
    //    [self.delectBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    //    [self.lineTitleBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}


- (IBAction)clickBtn:(UIButton *)sender {
    NSLog(@"点击！");
}


@end
