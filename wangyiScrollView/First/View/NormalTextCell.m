//
//  NormalTextCell.m
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "NormalTextCell.h"


#define CellHeight 44
@interface NormalTextCell()

@end

@implementation NormalTextCell

+(CGFloat)cellHeight{
    return CellHeight;
}

+(NSString *)ID{
    
    return @"NormalTextCell";
}


+(instancetype)cellWithTableView:(id)tableView forIndexPath:(NSIndexPath *)indexPath{
    
    
    
    NormalTextCell *cell = [tableView dequeueReusableCellWithIdentifier:[NormalTextCell ID]];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"NormalTextCell" owner:nil options:nil];
        
        for (id oneObject in nib)
        {
            if ([oneObject isKindOfClass:[NormalTextCell class]])
            {
                cell = (NormalTextCell *)oneObject;
            }
        }
    }

    return  cell;
    
}




//- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//    if (self) {
//        // Initialization code
//        self.selectionStyle = UITableViewCellSelectionStyleNone;
//        self.backgroundColor = [UIColor whiteColor];
//        
//        
//        
//    }
//    return self;
//}



- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
