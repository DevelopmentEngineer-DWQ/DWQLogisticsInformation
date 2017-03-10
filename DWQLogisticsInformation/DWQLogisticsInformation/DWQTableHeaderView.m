//
//  DWQTableHeaderView.m
//  DWQLogisticsInformation
//
//  Created by 杜文全 on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "DWQTableHeaderView.h"

#import "DWQConfigFile.h"

@interface DWQTableHeaderView ()


@end
@implementation DWQTableHeaderView

//- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {
//    self = [super initWithReuseIdentifier:reuseIdentifier];
//    if (self) {
//
//        [self setupUI];
//    }
//
//    return self;
//}
-(instancetype)initWithFrame:(CGRect)frame{
    
    self=[super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setPhone:(NSString *)phone {
    
    self.phoneLabel.text = phone;
}

- (void)setNumber:(NSString *)number {
    
    self.numLabel.text = number;
}

- (void)setCompany:(NSString *)company {
    
    self.comLabel.text = company;
}

- (void)setupUI {
    self.backgroundColor=[UIColor whiteColor];
    
    UIView *bgView = [[UIView alloc]init];
    bgView.backgroundColor = [UIColor whiteColor];
    [self addSubview:bgView];
    
    self.goodsPic.frame=CGRectMake(Gap, Gap, 8*Gap, 8*Gap);
    self.goodsPic.image=[UIImage imageNamed:@"凯迪拉克.jpg"];
    [bgView addSubview:self.goodsPic];
    
    UILabel *label0=[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.goodsPic.frame)+Gap/3,Gap, 7*Gap, 2*Gap)];
    label0.font = [UIFont systemFontOfSize:15];
    label0.textColor = [UIColor grayColor];
    label0.text = @"物流状态:";
    [bgView addSubview:label0];
    
    self.type.frame=CGRectMake(CGRectGetMaxX(label0.frame)+Gap/2, label0.frame.origin.y, DWQScreenWidth/2, label0.frame.size.height);
    self.type.font=[UIFont systemFontOfSize:15];
    self.type.textColor=[UIColor grayColor];
    self.type.textAlignment=NSTextAlignmentLeft;
    [bgView addSubview:self.type];
    
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(label0.frame.origin.x ,CGRectGetMaxY(label0.frame), 7*Gap, 2*Gap)];
    label1.font = [UIFont systemFontOfSize:15];
    label1.textColor = [UIColor grayColor];
    label1.text = @"运单编号:";
    [bgView addSubview:label1];
    
    self.numLabel.frame=CGRectMake(CGRectGetMaxX(label1.frame)+Gap/2, label1.frame.origin.y, DWQScreenWidth/2, label1.frame.size.height);
    self.numLabel.font=[UIFont systemFontOfSize:15];
    self.numLabel.textColor=[UIColor grayColor];
    self.numLabel.textAlignment=NSTextAlignmentLeft;
    [bgView addSubview:self.numLabel];
    
    
    UILabel *label2 = [[UILabel alloc]initWithFrame:CGRectMake(label1.frame.origin.x ,CGRectGetMaxY(label1.frame), 7*Gap, 2*Gap)];
    label2.font = [UIFont systemFontOfSize:15];
    label2.textColor = [UIColor grayColor];
    label2.text = @"承运公司:";
    [bgView addSubview:label2];
    
    
    self.comLabel.frame=CGRectMake(CGRectGetMaxX(label2.frame)+Gap/2, label2.frame.origin.y, DWQScreenWidth/2, label1.frame.size.height);
    self.comLabel.font=[UIFont systemFontOfSize:15];
    self.comLabel.textColor=[UIColor grayColor];
    self.comLabel.textAlignment=NSTextAlignmentLeft;
    [bgView addSubview:self.comLabel];
    
    
    
    UILabel *label3 = [[UILabel alloc]initWithFrame:CGRectMake(label2.frame.origin.x ,CGRectGetMaxY(label2.frame), 7*Gap, 2*Gap)];
    label3.font = [UIFont systemFontOfSize:15];
    label3.textColor = [UIColor grayColor];
    label3.text = @"官方电话:";
    [bgView addSubview:label3];
    
    self.phoneLabel.frame=CGRectMake(CGRectGetMaxX(label3.frame)+Gap/2, label3.frame.origin.y, DWQScreenWidth/2, label1.frame.size.height);
    self.phoneLabel.font=[UIFont systemFontOfSize:15];
    self.phoneLabel.textColor=[UIColor grayColor];
    self.phoneLabel.textAlignment=NSTextAlignmentLeft;
    [bgView addSubview:self.phoneLabel];
    
    UILabel *line=[[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.goodsPic.frame)+Gap, DWQScreenWidth, Gap)];
    line.backgroundColor=[UIColor lightGrayColor];
    [bgView addSubview:line];
    //
    //    self.psHeaderPic.frame=CGRectMake(self.goodsPic.frame.origin.x, CGRectGetMaxY(line.frame)+Gap/2, 3*Gap, 3*Gap);
    //    self.psHeaderPic.image=[UIImage imageNamed:@"派送"];
    //    [bgView addSubview:self.psHeaderPic];
    //
    //    UILabel *paisongyuan=[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.psHeaderPic.frame), CGRectGetMaxY(line.frame), 6*Gap, 2*Gap)];
    //    paisongyuan.text=@"派送员";
    //    paisongyuan.textColor=[UIColor grayColor];
    //    paisongyuan.font=SSmallFont;
    //    [bgView addSubview:paisongyuan];
    //
    //    self.psName.frame=CGRectMake(paisongyuan.frame.origin.x, CGRectGetMaxY(paisongyuan.frame), 4*Gap, 2*Gap);
    //    self.psName.font=SSmallFont;
    //    [bgView addSubview:self.psName];
    //
    //    self.psPhone.frame=CGRectMake(CGRectGetMaxX(self.psName.frame), self.psName.frame.origin.y, 8*Gap, 2*Gap);
    //    //self.psPhone.backgroundColor=[UIColor redColor];
    //    self.psPhone.titleLabel.font=SSmallFont;
    //    [self.psPhone setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    //    [bgView addSubview:self.psPhone];
    //
    //    UIImageView *phoneImageview=[[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.psPhone.frame), self.psPhone.frame.origin.y, 1.2*Gap, 2*Gap)];
    //    phoneImageview.image=[UIImage imageNamed:@"手机"];
    //    [bgView addSubview:phoneImageview];
    //    bgView.userInteractionEnabled=YES;
    //
    //    [self.psPhone addTarget:self action:@selector(BoHao) forControlEvents:UIControlEventTouchUpInside];
    //    self.userInteractionEnabled=YES;
    //    UILabel *line2=[[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.psPhone.frame), DWQMainScreenWidth, Gap)];
    //    line2.backgroundColor=[UIColor lightGrayColor];
    //    [bgView addSubview:line2];
}
-(void)BoHao{
    NSLog(@"我要开始拨号了");
    
}
#pragma mark 懒加载
-(UIImageView *)goodsPic{
    
    if(!_goodsPic) {
        
        _goodsPic =[[UIImageView alloc]init];
        
    }
    
    return _goodsPic;
    
}
-(UILabel *)type{
    
    if(!_type) {
        
        _type =[[UILabel alloc]init];
        
    }
    
    return _type;
    
}
-(UILabel *)numLabel{
    
    if(!_numLabel) {
        
        _numLabel =[[UILabel alloc]init];
        
    }
    
    return _numLabel;
    
}
-(UILabel *)comLabel{
    
    if(!_comLabel) {
        
        _comLabel =[[UILabel alloc]init];
        
    }
    
    return _comLabel;
    
}
-(UILabel *)phoneLabel{
    
    if(!_phoneLabel) {
        
        _phoneLabel =[[UILabel alloc]init];
        
    }
    
    return _phoneLabel;
    
}
-(UIImageView *)psHeaderPic{
    
    if(!_psHeaderPic) {
        
        _psHeaderPic =[[UIImageView alloc]init];
        
    }
    
    return _psHeaderPic;
    
}
-(UILabel *)psName{
    
    if(!_psName) {
        
        _psName =[[UILabel alloc]init];
        
    }
    
    return _psName;
    
}
-(UIButton *)psPhone{
    
    if(!_psPhone) {
        
        _psPhone =[[UIButton alloc]init];
        
    }
    
    return _psPhone;
    
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */


@end
