//
//  ZWAdView.h
//  ADScrollview
//
//  Created by Zhouwu on 14/11/7.
//  Copyright (c) 2014年 com.thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ZWAdViewDelagate;

@interface ZWAdView : UIView<UIScrollViewDelegate>
@property(nonatomic,strong) UIScrollView *adScrollView;
@property(nonatomic,strong) UIPageControl *adPageControl;
@property(nonatomic,retain) NSTimer *adLoopTimer;
@property(nonatomic,copy) NSString *placeImageSource;
@property(nonatomic,retain) NSMutableArray *adDataArray;  //广告图片数组
@property(nonatomic,assign) CGFloat adPeriodTime; //切换广告时间,默认2秒
@property(nonatomic,assign) BOOL adAutoplay;  //是否自动播放广告,默认yes
@property(nonatomic,weak) id<ZWAdViewDelagate>delegate;

-(void)loadAdDataThenStart;  //加载广告图片并开始播放
@end
@protocol ZWAdViewDelagate <NSObject>

-(void)adView:(ZWAdView *)adView didDeselectAdAtNum:(NSInteger)num;

@end