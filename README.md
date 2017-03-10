# DWQLogisticsInformation
帮你快速集成物流信息展示
![DWQ-LOGO.jpeg](http://upload-images.jianshu.io/upload_images/2231137-dcf9ef72a7b6af5e.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

##引述
  最近，一直收到读者的点赞和喜欢，以及关注，心里很高兴。也激发我继续努力的写下去。将自己多年的积累毫无保留的全部奉上。对于一个电商平台，当我下完单，卖家发货后，我们最关心的是什么？肯定是货物的物流信息了吧。于是，本人封装了一个物流信息展示框架，能够让你简单快速的在项目中使用。

## DWQLogisticsInformation

  首先，咱们来看看淘宝的物流信息展示是什么样子的。
![物流展示.png](http://upload-images.jianshu.io/upload_images/2231137-01692ed01075fd3c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/300)
在我们看到这个物流信息展示的时候，我相信，作为一个iOS开发者来说，这是一个UITableView。对，没错，这就是TableView，做iOS多年来，我一直坚信那么一件事情，没有TableView完不成的界面，即使APPLE后来推出了UIcollectionView，我一般情况下也是更喜欢使用TableView。

实现这个界面对于每一个开发者来说我想并不难，只需要自定义Cell即可，自定义的Cell包含左侧轨迹的imageview，物流详情的label，时间的label，再加上逻辑判断等，完全能实现类似淘宝的物流轨迹界面。
## DWQLogisticsInformation的使用
DWQLogisticsInformation是为了更方便开发者集成类似淘宝的物流轨迹做的封装，能够让开发者快速的在自己的项目中使用。那么，接下来讲述下如何使用。

- 1、引入头文件

```objective-c
#import "DWQLogisticModel.h"
#import "DWQLogisticsView.h"
#import "DWQConfigFile.h"
```

- 2、下载数据，保存模型，需要将数据解析成两个数组，一个是物流详情数组，另外一个就是时间数组，类似示例代码：

```objective-c
 NSArray *arr = @[@"北包裹正在等待揽收",@"[太原市]百世快递 阳曲收件员 已揽件",@"[太原市]阳曲 已发出",@"[太原市]快件已到达 太原转运中心",@"[太原市]太原转运中心 已发出",@"到济南市【济南转运中心】",@"[济南市]快件已到达 济南转运中心",@"[济南市]济南转运中心 已发出",@"[济南市]【已签收，签收人是拍照签收】，感谢使用百世快递，期待再次为您服务"];
    
    NSArray *dateArray=@[@"2015-6-5",@"2015-6-6",@"2015-6-7",@"2015-6-8",@"2015-6-9",@"2015-6-10",@"2015-6-11",@"2015-6-12",@"2015-6-13"];

```
- 3、转模型，将模型存如模型数组

```onjective-c
for (NSInteger i =arr.count-1; i>=0 ; i--) {
        DWQLogisticModel *model = [[DWQLogisticModel alloc]init];
        
        model.dsc = [arr objectAtIndex:i];
        
        model.date = [dateArray objectAtIndex:i];
        [self.dataArray addObject:model];
        
 
    }

```
- 4、创建DWQLogisticsView,并添加到view上。

```objective-c
  DWQLogisticsView *logis = [[DWQLogisticsView alloc]initWithDatas:self.dataArray];
    
    
    logis.frame = CGRectMake(0, 0, DWQScreenWidth, DWQScreenHeight);
    
    [self.view addSubview:logis];
```
- 5、效果展示：

![物流.gif](http://upload-images.jianshu.io/upload_images/2231137-7d1d20122bb98fa0.gif?imageMogr2/auto-orient/strip)
##注意：
>本框架基于Masonry布局，如遇到和自己项目中的冲突，请自行删除其中一个

##Demo下载
[DWQLogisticsInformation](https://github.com/DevelopmentEngineer-DWQ/DWQLogisticsInformation)

喜欢的大家给个点赞和喜欢，下载Demo时候记得给GitHub上点歌Star噢~~~~！
