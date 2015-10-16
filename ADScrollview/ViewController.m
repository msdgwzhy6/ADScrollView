//
//  ViewController.m
//  ADScrollview
//
//  Created by Zhouwu on 15/1/6.
//  Copyright (c) 2015年 Zhouwu. All rights reserved.
//

#import "ViewController.h"
#import "ZWAdView.h"

@interface ViewController ()<ZWAdViewDelagate>
@property(nonatomic,strong)ZWAdView *adView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置广告图片
    self.adView=[[ZWAdView alloc]initWithFrame:CGRectMake(0, (self.view.bounds.size.height-400)/2,self.view.bounds.size.width , 400)];
    self.adView.delegate=self;
    /**广告链接*/
    NSArray *imageArray=@[@"http://f.hiphotos.baidu.com/image/pic/item/c9fcc3cec3fdfc03777a357fd03f8794a5c226f3.jpg",@"http://b.hiphotos.baidu.com/image/pic/item/d009b3de9c82d1580d1b8f76840a19d8bd3e4258.jpg",@"http://d.hiphotos.baidu.com/image/pic/item/6f061d950a7b02084052e92666d9f2d3562cc85a.jpg",@"http://e.hiphotos.baidu.com/image/pic/item/a6efce1b9d16fdfae3ebb2e3b68f8c5494ee7b33.jpg"];
    self.adView.adDataArray=[NSMutableArray arrayWithArray:imageArray];
    self.adView.pageControlPosition=ZWPageControlPosition_BottomCenter;/**设置圆点的位置*/
    self.adView.hidePageControl=NO;/**设置圆点是否隐藏*/
    self.adView.adAutoplay=YES;/**自动播放是否开启*/
    self.adView.adPeriodTime=2.5;/**时间间隔*/
    self.adView.placeImageSource=@"banner1";/**设置默认广告*/
    [self.adView loadAdDataThenStart];
    [self.view addSubview:self.adView];
}

#pragma mark - 广告栏点击
-(void)adView:(ZWAdView *)adView didDeselectAdAtNum:(NSInteger)num{
    NSLog(@"-click index>%ld",num);
}

-(BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
