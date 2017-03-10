//
//  DWQLogisticModel.m
//  DWQLogisticsInformation
//
//  Created by 杜文全 on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "DWQLogisticModel.h"
#import "DWQConfigFile.h"

@interface DWQLogisticModel ()

@property (assign, nonatomic)CGFloat tempHeight;
@end

@implementation DWQLogisticModel

- (CGFloat)height {
    
    if (_tempHeight == 0) {
        
        NSDictionary * dict=[NSDictionary dictionaryWithObject: [UIFont systemFontOfSize:12] forKey:NSFontAttributeName];
        
        CGRect rect=[self.dsc boundingRectWithSize:CGSizeMake(DWQScreenWidth - dwq_leftSpace - 2*dwq_rightSpace, CGFLOAT_MAX) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
        
        _tempHeight = rect.size.height + 50;;
    }
    
    return _tempHeight;
}
@end
