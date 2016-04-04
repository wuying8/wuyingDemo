//
//  ImageViewCell.m
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "ImageViewCell.h"

#define ImageViewCell_Height 250

@implementation ImageViewCell

+(CGFloat)cellHeight{
    return ImageViewCell_Height;
}

+(NSString *)ID{
    return NSStringFromClass([ImageViewCell class]);
}

+(instancetype)cellWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath{
    ImageViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[ImageViewCell ID]];
    
    if (cell == nil)
    {
        cell = [[ImageViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[ImageViewCell ID]];
    }
    return cell;

}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.imageBtn = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, ImageViewCell_Height)];
        self.imageBtn.backgroundColor = [UIColor whiteColor];
        self.imageBtn.contentMode = UIViewContentModeScaleAspectFill;
        self.layer.masksToBounds = YES;
        [self.contentView addSubview:self.imageBtn];
        
        
    }
    return self;
}

-(void)setCurImage:(UIImage *)curImage{
    
    _curImage = curImage;
    
    self.imageBtn.image = curImage;
}


@end
