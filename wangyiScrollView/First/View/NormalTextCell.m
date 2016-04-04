//
//  NormalTextCell.m
//  wangyiScrollView
//
//  Created by macmini on 16/4/1.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "NormalTextCell.h"

#define CellHeight 44
@interface NormalTextCell ()

@end

@implementation NormalTextCell

+ (CGFloat)cellHeight {
  return CellHeight;
}

+ (NSString *)ID {

  return @"NormalTextCell";
}

+ (instancetype)cellWithTableView:(id)tableView
                     forIndexPath:(NSIndexPath *)indexPath {

  NormalTextCell *cell =
      [tableView dequeueReusableCellWithIdentifier:[NormalTextCell ID]];

  if (cell == nil) {
      cell = [[NormalTextCell alloc]init];
//    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"NormalTextCell"
//                                                 owner:nil
//                                               options:nil];
//
//    for (id oneObject in nib) {
//      if ([oneObject isKindOfClass:[NormalTextCell class]]) {
//        cell = (NormalTextCell *)oneObject;
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
//      }
//    }
  }

  return cell;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
        
    }
    return self;
}

-(void)setup{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 80, 30)];
    self.titleLabel.center = CGPointMake(15 + 40, self.center.y);
    self.titleLabel.font = [UIFont systemFontOfSize:17];
    self.titleLabel.textColor = [UIColor blackColor];
    [self addSubview:self.titleLabel];
    
    self.contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(15 + 80 +10, (CellHeight - 30)/2, SCREEN_WIDTH -115 , 30)];
    self.contentLabel.font = [UIFont systemFontOfSize:16];
    self.contentLabel.textColor = [UIColor grayColor];
    [self addSubview:self.contentLabel];
    self.contentLabel.hidden = NO;
    
    self.tagsView = [[HXTagsView alloc] initWithFrame:CGRectMake(15 + 80 +10, self.titleLabel.frame.origin.y, SCREEN_WIDTH -115, 0)];
    self.tagsView.type = 0;
    [self addSubview:self.tagsView];
    self.tagsView.hidden = YES;
}



- (void)setModel:(BaseCellModel *)model {
    _model = model;
    _titleLabel.text = model.title;
    _contentLabel.text = model.content;

    if (model.type == ButtonGroupCellType && model.arrayBtns.count > 0) {
        if (model.groupType == DateBtnGroupType) {
            [_tagsView setupWithDateType];
        }else{
            [_tagsView setupWithServiceType];
        }
        _contentLabel.hidden = YES;
        _tagsView.hidden = NO;
       [_tagsView setTagAry:model.arrayBtns delegate:self];
    }else{
        _contentLabel.hidden = NO;
        _tagsView.hidden = YES;
    }
    

 
}


@end
