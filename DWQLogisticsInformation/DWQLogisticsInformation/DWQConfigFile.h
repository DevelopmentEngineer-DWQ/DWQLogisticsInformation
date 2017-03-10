//
//  DWQConfigFile.h
//  DWQLogisticsInformation
//
//  Created by 杜文全 on 16/7/9.
//  Copyright © 2016年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#ifndef DWQConfigFile_h
#define DWQConfigFile_h

#define DWQScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define DWQScreenHeight ([UIScreen mainScreen].bounds.size.height)

//R G B 颜色
#define DWQRGBColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]

//R G B A 颜色
#define DWQRGBAColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 \
alpha:(a)]

static CGFloat Gap =10;
static CGFloat dwq_leftSpace = 50.0;
static CGFloat dwq_rightSpace = 10.0;

#import "Masonry.h"
#endif /* DWQConfigFile_h */
