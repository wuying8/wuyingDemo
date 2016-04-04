//
//  DateSelectedController.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/4.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "DateSelectedController.h"
#import "CalendarHomeViewController.h"

@interface DateSelectedController (){
     //日期选择器
     CalendarHomeViewController *chvc;
}

@end

@implementation DateSelectedController

-(void)viewDidLoad{
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"选择出发的日期";
    
    
    
    
    self.dateArray = [NSMutableArray array];
    
    chvc = [[CalendarHomeViewController alloc]init];
    chvc.view.frame=CGRectMake(0,64, self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:chvc.view];
    
    
    [chvc setHotelToDay:120 ToDateforString:nil];//飞机初始化方法
    
    
    WS(ws);
    chvc.calendarblock = ^(CalendarDayModel *model){
       
        NSLog(@"%@",[model toString]);
        
        if(model.style==CellDayTypeClick)
        {
            [ws.dateArray addObject:model.toString];
            
            NSSet *set = [NSSet setWithArray:ws.dateArray];
            ws.dateArray=[[set allObjects] mutableCopy];
            
            [ws.dateArray sortUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
                return [obj1 compare:obj2];
            }];
            
        }
        else
        {
            [ws.dateArray removeObject:model.toString];
            
        }
        
    };
}

@end
