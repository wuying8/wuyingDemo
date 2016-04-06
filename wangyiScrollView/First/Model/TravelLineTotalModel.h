//
//  TravelLineModel.h
//  wangyiScrollView
//
//  Created by 无影 on 16/4/5.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TravelLineTotalModel : NSObject

//用户ID
@property (nonatomic ,assign) int *uid;

//路线名称
@property (nonatomic ,strong) NSString *linename;

//路线简介
@property (nonatomic ,strong) NSString *linecontents;

//天数
@property (nonatomic ,assign) int *days;

//报价
@property (nonatomic ,assign) double *money;

//免责说明
@property (nonatomic ,strong) NSString *discexplain;

//费用说明
@property (nonatomic ,strong) NSString *costexplain;

//从业年限
@property (nonatomic ,strong) NSString *othercontents;

//路线类型
@property (nonatomic ,assign) int *linetype;

//线路状态（0、通过 1、不通过）
@property (nonatomic ,assign) int *linestate;

//线路状态（0、通过 1、不通过）
@property (nonatomic ,assign) int *linedesc;

//行程安排
@property (nonatomic ,strong) NSString *linearrange;

//开始日期
@property (nonatomic ,strong) NSString *starttime;

//结束日期
@property (nonatomic ,strong) NSString *endtime;

//线路参见人数
@property (nonatomic ,strong) NSString *peonum;

//线路出发截止日期
@property (nonatomic ,strong) NSString *setofftime;

//线路地点
@property (nonatomic ,strong) NSString *lineadress;

//经度
@property (nonatomic ,strong) NSString *lng;

//纬度
@property (nonatomic ,strong) NSString *lat;

//线路图片说明（集合）
@property (nonatomic ,strong) NSString *imgdesc;

//线路封面图片
@property (nonatomic ,strong) NSString *linepic;

//获取的token
@property (nonatomic ,strong) NSString *token;

//会员手机号码
@property (nonatomic ,strong) NSString *phone;


@end
