//
//  LogisticViewController.m
//  DWQLogisticsInformation
//
//  Created by 杜文全 on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "LogisticViewController.h"
#import "DWQLogisticModel.h"
#import "DWQLogisticsView.h"
#import "DWQConfigFile.h"
@interface LogisticViewController ()
@property (strong, nonatomic)NSMutableArray *dataArray;
@end

@implementation LogisticViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"物流中心";
    [self loadData];
}
#pragma mark 下载数据
-(void)loadData{

    NSArray *arr = @[@"北包裹正在等待揽收",@"[太原市]百世快递 阳曲收件员 已揽件",@"[太原市]阳曲 已发出",@"[太原市]快件已到达 太原转运中心",@"[太原市]太原转运中心 已发出",@"到济南市【济南转运中心】",@"[济南市]快件已到达 济南转运中心",@"[济南市]济南转运中心 已发出",@"[济南市]【已签收，签收人是拍照签收】，感谢使用百世快递，期待再次为您服务"];
    
    NSArray *dateArray=@[@"2015-6-5",@"2015-6-6",@"2015-6-7",@"2015-6-8",@"2015-6-9",@"2015-6-10",@"2015-6-11",@"2015-6-12",@"2015-6-13"];
    
    for (NSInteger i =arr.count-1; i>=0 ; i--) {
        DWQLogisticModel *model = [[DWQLogisticModel alloc]init];
        
        
        model.dsc = [arr objectAtIndex:i];
        
        model.date = [dateArray objectAtIndex:i];
        [self.dataArray addObject:model];
        
        
        
    }
    
    DWQLogisticsView *logis = [[DWQLogisticsView alloc]initWithDatas:self.dataArray];
    
    
    logis.frame = CGRectMake(0, 0, DWQScreenWidth, DWQScreenHeight);
    
    [self.view addSubview:logis];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSMutableArray *)dataArray {
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray array];
    }
    
    return _dataArray;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
