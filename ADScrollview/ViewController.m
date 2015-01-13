//
//  ViewController.m
//  ADScrollview
//
//  Created by Zhouwu on 15/1/6.
//  Copyright (c) 2015年 Zhouwu. All rights reserved.
//

#import "ViewController.h"
#import "ZWAdView.h"

#define kAdBtnHeight 180
@interface ViewController ()<ZWAdViewDelagate>
@property(nonatomic,strong)ZWAdView *adView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置广告图片
    self.adView=[[ZWAdView alloc]initWithFrame:CGRectMake(0, 0,self.view.bounds.size.width , kAdBtnHeight)];
    self.adView.delegate=self;
    /**广告链接*/
    NSArray *imageArray=@[@"http://img4.cache.netease.com/photo/0003/2014-05-12/9S1K01H200AJ0003.jpg",@"http://img4.cache.netease.com/photo/0003/2014-05-12/9S1K01H200AJ0003.jpg",@"http://img3.cache.netease.com/photo/0003/2014-09-30/A7CS9G7400AJ0003.jpg",@"http://img.hb.aicdn.com/8e2152685346fe4030f7f217b710e17ed500f9563a98a-7ihoX3_fw658",@""];
    self.adView.adDataArray=[NSMutableArray arrayWithArray:imageArray];
    self.adView.adAutoplay=YES;/**自动播放*/
    self.adView.adPeriodTime=3.0;/**时间间隔*/
    self.adView.placeImageSource=@"banner1";/**设置默认广告*/
    [self.adView loadAdDataThenStart];
    [self.view addSubview:self.adView];
}

#pragma mark - 广告栏点击
-(void)adView:(ZWAdView *)adView didDeselectAdAtNum:(NSInteger)num{
    NSLog(@"====index==%d",num);
}

-(BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
