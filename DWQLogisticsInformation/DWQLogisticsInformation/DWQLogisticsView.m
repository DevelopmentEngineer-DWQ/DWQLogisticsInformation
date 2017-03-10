//
//  DWQLogisticsView.m
//  DWQLogisticsInformation
//
//  Created by 杜文全 on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "DWQLogisticsView.h"
#import "DWQConfigFile.h"
#import "DWQLogisticCell.h"


@interface DWQLogisticsView () <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic)NSMutableArray *dataArray;
@property (strong, nonatomic)UITableView *table;
@end

@implementation DWQLogisticsView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupUI];
    }
    
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        
        [self setupUI];
    }
    
    return self;
}

- (instancetype)initWithDatas:(NSArray*)array {
    self = [super init];
    if (self) {
        
        [self.dataArray addObjectsFromArray:array];
        //        [self setupUI];
    }
    
    return self;
}

- (void)setDatas:(NSArray *)datas {
    if (_datas == datas) {
        
        _datas = datas;
    }
    
    [self.table reloadData];
}

- (void)reloadDataWithDatas:(NSArray *)array {
    
    [self.dataArray addObjectsFromArray:array];
    [self.table reloadData];
}
- (NSMutableArray *)dataArray {
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray array];
    }
    
    return _dataArray;
}

- (void)setupUI {
    UITableView *table = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    table.delegate = self;
    table.dataSource = self;
    table.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self addSubview:table];
    [table setTableFooterView:[[UIView alloc] initWithFrame:CGRectZero]];
    self.table = table;
    
    [table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self);
    }];
    
    
    self.header=[[DWQTableHeaderView alloc]initWithFrame:CGRectMake(0, 0, DWQScreenWidth, 120)];;
    
    //[table registerClass:[LZTableHeaderView class] forHeaderFooterViewReuseIdentifier:@"header"];
    self.header.userInteractionEnabled=YES;
    
    self.header.type.text=@"已签收";
    self.header.numLabel.text = @"12345554t636647";
    self.header.comLabel.text = @"顺丰速运";
    self.header.phoneLabel.text = @"10086";
    self.header.psName.text=@"杜文全";
    [self.header.psPhone setTitle:@"18306444333" forState:UIControlStateNormal] ;
    [self.header.psPhone addTarget:self action:@selector(BoHao) forControlEvents:UIControlEventTouchUpInside];
    self.header.psPhone.userInteractionEnabled=YES;
    self.table.tableHeaderView=self.header;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DWQLogisticCell *cell = [tableView dequeueReusableCellWithIdentifier:@"logisticsCellIdentifier"];
    if (cell == nil) {
        
        cell = [[DWQLogisticCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"logisticsCellIdentifier"];
    }
    
    if (indexPath.row == 0) {
        cell.hasUpLine = NO;
        cell.currented = YES;
    } else {
        cell.hasUpLine = YES;
        cell.currented = NO;
        //        cell.currentTextColor = nil;
    }
    
    if (indexPath.row == self.dataArray.count - 1) {
        cell.hasDownLine = NO;
    } else {
        cell.hasDownLine = YES;
    }
    
    DWQLogisticModel *model = [self.dataArray objectAtIndex:indexPath.row];
    
    [cell reloadDataWithModel:model];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DWQLogisticModel *model = [self.dataArray objectAtIndex:indexPath.row];
    
    return model.height;
}

//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//
//    LZTableHeaderView *header =[tableView dequeueReusableHeaderFooterViewWithIdentifier:@"header"];
//    header.type.text=@"已签收";
//    header.numLabel.text = @"12345554t636647";
//    header.comLabel.text = @"顺丰速运";
//    header.phoneLabel.text = @"10086";
//    header.psName.text=@"杜文全";
//    [header.psPhone setTitle:@"18306444333" forState:UIControlStateNormal] ;
//    [header.psPhone addTarget:self action:@selector(BoHao) forControlEvents:UIControlEventTouchUpInside];
//
//
//
//   //[header.psPhone sizeToFit];
//    return header;
//}

#pragma mark 拨打电话
-(void)BoHao{
    NSLog(@"我要开始拨号了");
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return 1;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//
//    return 150;
//}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */


@end
