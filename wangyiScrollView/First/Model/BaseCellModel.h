//
//  BaseCellModel.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/4.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, BaseCellType) {
    NormalTextCellType,     //文本
    ButtonGroupCellType,    //按钮组
    
};
typedef NS_ENUM(NSInteger, BtnGroupType) {
    DateBtnGroupType,     //文本
    ServiceBtnGroupType,    //按钮组
    
};


@interface BaseCellModel : NSObject

@property (nonatomic ,strong) NSString *title;

@property (nonatomic ,strong) NSString *content;

@property (nonatomic ,strong) NSArray *arrayBtns;

@property (nonatomic ,assign) BaseCellType type;

@property (nonatomic ,assign) BtnGroupType groupType;

+(instancetype) createModelWithTitle:(NSString *)title Content:(NSString *)content Type:(BaseCellType)type;

@end
