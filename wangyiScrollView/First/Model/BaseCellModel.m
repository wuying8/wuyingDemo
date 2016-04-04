//
//  BaseCellModel.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/4.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "BaseCellModel.h"

@implementation BaseCellModel

+ (instancetype)createModelWithTitle:(NSString*)title Content:(NSString*)content Type:(BaseCellType)type
{

    BaseCellModel* model = [[BaseCellModel alloc] init];
    model.title = title;
    model.content = content;
    model.type = type;

    return model;
}

@end
