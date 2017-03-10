//
//  DWQLogisticsView.h
//  DWQLogisticsInformation
//
//  Created by 杜文全 on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DWQTableHeaderView.h"
@interface DWQLogisticsView : UIView

@property (strong, nonatomic)NSArray *datas;
@property (nonatomic,strong) DWQTableHeaderView *header ;
- (instancetype)initWithDatas:(NSArray*)array;
- (void)reloadDataWithDatas:(NSArray *)array;
@end
