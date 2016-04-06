//
//  TLiManagerController.m
//  wangyiScrollView
//
//  Created by 无影 on 16/4/6.
//  Copyright © 2016年 macmini. All rights reserved.
//

#import "TLiManagerController.h"
#import "TLDayLineModel.h"
#import "TravelLineCell.h"
#import "TravelLineModel.h"
#import "BtnCellTableViewCell.h"
#import "TravelLineFooterCell.h"
#import "BottomTabBarItemModel.h"
#import "BottomTabBar.h"

@interface TLiManagerController () <UITableViewDataSource,UITableViewDelegate ,TravelLineCellDelegate>

@property (nonatomic ,strong) UITableView *tableView;

@property (nonatomic ,strong) TLDayLineModel *dayLine;

@property (nonatomic ,strong) TravelLineModel *line;

@property (nonatomic ,strong) NSMutableArray *lineArray;
@end

@implementation TLiManagerController


-(void)viewDidLoad{
    [super viewDidLoad];
    self.lineArray = [NSMutableArray arrayWithArray:@[@1,@1,@1]];
    
    [self initUI];
}

/**
 *  设置UI界面
 */
- (void)initUI
{
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, FUll_VIEW_WIDTH, FUll_CONTENT_HEIGHT - PageBtn - BottomTabBar_Height)style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView setTableFooterView:[[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 20)]];
    [self.view addSubview:self.tableView];
}

/**
 *  添加线路
 */
-(void)addTravelLine{
    [self.lineArray addObject:@1];
    [self.tableView beginUpdates];
    [self.tableView insertSections:[NSIndexSet indexSetWithIndex:self.lineArray.count - 1] withRowAnimation:UITableViewRowAnimationLeft];
    [self.tableView endUpdates];
}





#pragma mark UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
//    return self.dayLine.lineArray.count;
    return self.lineArray.count + 1;
}

- (CGFloat)tableView:(UITableView*)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView*)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1f;
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return 60.f;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (indexPath.section == self.lineArray.count) {
        TravelLineFooterCell *cell = [TravelLineFooterCell cellWithTableView:tableView];
        return cell;
    }else{
        TravelLineCell  *cell  = [TravelLineCell cellWithTableView:tableView];
        cell.delegate = self;
        return cell;
    }

}

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == self.lineArray.count) {
        [self addTravelLine];
    }else{
        NSLog(@"请打开线路详情");
    }

}


#pragma mark TravelLineCellDelegate
-(void)removeTravelLine:(TravelLineCell *)cell{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    [self.tableView beginUpdates];
    [self.lineArray removeObjectAtIndex:indexPath.section];
    [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:indexPath.section] withRowAnimation:UITableViewRowAnimationLeft];
    [self.tableView endUpdates];
    
}



@end
