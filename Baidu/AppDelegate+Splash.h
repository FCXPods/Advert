//
//  AppDelegate+Splash.h
//  Go
//
//  Created by 冯 传祥 on 16/1/23.
//  Copyright © 2016年 冯 传祥. All rights reserved.
//

#import "AppDelegate.h"
#import "BaiduMobAdSplashDelegate.h"
#import "BaiduMobAdSplash.h"

@interface AppDelegate (Splash) <BaiduMobAdSplashDelegate>

@property (strong, nonatomic) BaiduMobAdSplash *splash;
@property (strong, nonatomic) UIImageView *customSplashView;
@property (nonatomic, strong) NSDate *enterBackgroundDate;

@end
