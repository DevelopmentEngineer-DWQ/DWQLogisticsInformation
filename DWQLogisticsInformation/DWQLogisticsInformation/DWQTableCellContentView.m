//
//  DWQTableCellContentView.m
//  DWQLogisticsInformation
//
//  Created by 杜文全 on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "DWQTableCellContentView.h"

#import "DWQConfigFile.h"
#import "DWQLogisticModel.h"

@interface DWQTableCellContentView ()

@property (strong, nonatomic)UILabel *infoLabel;
@property (strong, nonatomic)UILabel *dateLabel;
@end
@implementation DWQTableCellContentView

- (instancetype)init {
    self = [super init];
    if (self) {
        
        [self setupUI];
    }
    
    return self;
}

- (void)reloadDataWithModel:(DWQLogisticModel*)model {
    
    self.infoLabel.text = model.dsc;
    self.dateLabel.text = model.date;
    
    [self setNeedsDisplay];
}

- (void)setCurrentTextColor:(UIColor *)currentTextColor {
    
    self.infoLabel.textColor = currentTextColor;
}

- (void)setTextColor:(UIColor *)textColor {
    
    self.infoLabel.textColor = textColor;
}

- (void)setCurrented:(BOOL)currented {
    
    _currented = currented;
    if (currented) {
        self.infoLabel.textColor = DWQRGBColor(0, 0, 0);
    } else {
        self.infoLabel.textColor = DWQRGBColor(139, 139, 139);
    }
}

- (void)setupUI {
    
    self.backgroundColor = [UIColor whiteColor];
    
    UILabel *info= [[UILabel alloc]init];
    info.text = @"[北京顺义区顺义机场公司]派件人:xxx 派件中 派件员电话12345666777";
    info.font = [UIFont systemFontOfSize:12];
    info.numberOfLines = 0;
    if (self.currented) {
        info.textColor = DWQRGBColor(0, 0, 0);
    } else {
        info.textColor = DWQRGBColor(139, 139, 139);
    }
    
    [self addSubview:info];
    _infoLabel = info;
    
    UILabel *date = [[UILabel alloc]init];
    date.text = @"2016-07-13 04:30";
    date.font = [UIFont systemFontOfSize:12];
    date.textColor = DWQRGBColor(185, 185, 185);
    [self addSubview:date];
    _dateLabel = date;
    
    UILabel *line = [[UILabel alloc]init];
    line.backgroundColor = DWQRGBColor(238, 238, 238);
    [self addSubview:line];
    
    
    [info mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).offset(10);
        make.left.mas_equalTo(self).offset(dwq_leftSpace);
        make.right.mas_equalTo(self).offset(-dwq_rightSpace);
        make.bottom.mas_equalTo(date.mas_top).offset(-4);
    }];
    
    [date mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(info);
        make.bottom.mas_equalTo(self).offset(-10);
        make.right.mas_equalTo(info);
        make.top.mas_equalTo(info.mas_bottom).offset(4);
        make.height.mas_equalTo(@20);
    }];
    
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(dwq_leftSpace);
        make.right.mas_equalTo(self);
        make.bottom.mas_equalTo(self);
        make.height.mas_equalTo(@1);
    }];
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGFloat height = self.bounds.size.height;
    CGFloat cicleWith = self.currented?12:6;
    //    CGFloat shadowWith = cicleWith/3.0;
    
    if (self.hasUpLine) {
        
        UIBezierPath *topBezier = [UIBezierPath bezierPath];
        [topBezier moveToPoint:CGPointMake(dwq_leftSpace/2.0, 0)];
        [topBezier addLineToPoint:CGPointMake(dwq_leftSpace/2.0, height/2.0 - cicleWith/2.0 - cicleWith/6.0)];
        
        topBezier.lineWidth = 1.0;
        UIColor *stroke = DWQRGBColor(185, 185, 185);
        [stroke set];
        [topBezier stroke];
    }
    
    if (self.currented) {
        
        UIBezierPath *cicle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(dwq_leftSpace/2.0 - cicleWith/2.0, height/2.0 - cicleWith/2.0, cicleWith, cicleWith)];
        
        cicle.lineWidth = cicleWith/3.0;
        UIColor *cColor = DWQRGBAColor(255, 128, 0, 1.0);
        [cColor set];
        [cicle fill];
        
        UIColor *shadowColor = DWQRGBAColor(255, 128, 0, 0.5);
        [shadowColor set];
        
        
        [cicle stroke];
    } else {
        
        UIBezierPath *cicle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(dwq_leftSpace/2.0-cicleWith/2.0, height/2.0 - cicleWith/2.0, cicleWith, cicleWith)];
        
        UIColor *cColor = DWQRGBColor(185, 185, 185);
        [cColor set];
        [cicle fill];
        
        [cicle stroke];
    }
    
    if (self.hasDownLine) {
        
        UIBezierPath *downBezier = [UIBezierPath bezierPath];
        [downBezier moveToPoint:CGPointMake(dwq_leftSpace/2.0, height/2.0 + cicleWith/2.0 + cicleWith/6.0)];
        [downBezier addLineToPoint:CGPointMake(dwq_leftSpace/2.0, height)];
        
        downBezier.lineWidth = 1.0;
        UIColor *stroke = DWQRGBColor(185, 185, 185);
        [stroke set];
        [downBezier stroke];
    }
}
@end
