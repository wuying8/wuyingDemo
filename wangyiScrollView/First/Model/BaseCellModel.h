//
//  BaseCellModel.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/4.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCellModel : NSObject

@property (nonatomic ,strong) NSString *title;

@property (nonatomic ,strong) NSString *content;

+(instancetype) createModelWithTitle:(NSString *)title Content:(NSString *)content;

@end
