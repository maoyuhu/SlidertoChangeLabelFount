//
//  AppDelegate.m
//  sliderToChangeLabelFont
//
//  Created by myh on 16/7/10.
//  Copyright © 2016年 myh. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "MYHSliderChangeLabelFont.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UITabBarController *tab = [[UITabBarController alloc]init];
    ViewController *VC = [[ViewController alloc]init];
    VC.title = @"view";
    SecondViewController *sec = [[SecondViewController alloc]init];
    sec.title = @"sec";
    ThirdViewController *third = [[ThirdViewController alloc]init];
    third.title = @"third";
    [tab addChildViewController:VC];
    [tab addChildViewController:sec];
    [tab addChildViewController:third];
    _window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    _window.backgroundColor  = [UIColor whiteColor];
    _window.rootViewController = tab;
    [_window makeKeyAndVisible];
    // 实例化对象
    MYHSliderChangeLabelFont *slider = [MYHSliderChangeLabelFont shareInsance];
    [slider listenNotify];
    
    
    return YES;
}


- (void)dealloc{
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
