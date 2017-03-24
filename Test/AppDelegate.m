//
//  AppDelegate.m
//  Test
//
//  Created by wwwwwwww on 2017/3/21.
//  Copyright © 2017年 wwwwwwww. All rights reserved.
//

#import "AppDelegate.h"
#import "TabViewController.h"
#import "NavViewController.h"
#import "FViewController.h"
#import "SViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    TabViewController *vc = [[TabViewController alloc] init];

    //b.创建子控制器
    FViewController *c1 = [[FViewController alloc] init];

    SViewController *c2 = [[SViewController alloc] init];
    
    NavViewController *nav1 = [[NavViewController alloc] initWithRootViewController:c1];
    
    NavViewController *nav2 = [[NavViewController alloc] initWithRootViewController:c2];
    
    vc.viewControllers = @[nav1, nav2];
    
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    
    NSLog(@"hello");
    NSLog(@"HELLO!!!");
    NSLog(@"ZHANG WEN");
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
