//
//  DWQTableHeaderView.h
//  DWQLogisticsInformation
//
//  Created by 杜文全 on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DWQTableHeaderView : UIView
@property (nonatomic,strong) UIImageView *goodsPic;
@property (nonatomic,strong) UILabel *type;
@property (strong, nonatomic) UILabel *numLabel;
@property (strong, nonatomic) UILabel *comLabel;
@property (strong, nonatomic) UILabel *phoneLabel;
@property (nonatomic,strong) UIImageView *psHeaderPic;
@property (nonatomic,strong) UILabel *psName;
@property (nonatomic,strong) UIButton *psPhone;
@property (copy, nonatomic)NSString *number;
@property (copy, nonatomic)NSString *company;
@property (copy, nonatomic)NSString *phone;
@end
