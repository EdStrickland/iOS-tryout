//
//  AppDelegate.m
//  tryout
//
//  Created by Ed_Strickland on 16/3/26.
//  Copyright © 2016年 Ed_Strickland. All rights reserved.
//

#import "AppDelegate.h"
#import "timeTableViewCOntroller.h"
#import "circleTableViewCOntroller.h"
#import "HypnotizeViewController.h"
#import "firstView.h"
#import "temp.h"
#import "navControl.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    firstView *view = [[firstView alloc] init];
    circleTableViewController *firstViewController = [[circleTableViewController alloc]init];
    timeTableViewController *secondViewController = [[timeTableViewController alloc]init];

    UITabBarController *tabBar = [[UITabBarController alloc] init];
    firstViewController.navigationItem.title=@"发现";
    secondViewController.navigationItem.title=@"朋友圈";
    firstViewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:Nil];
    firstViewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:Nil];
    navControl *navController = [[navControl alloc] initWithRootViewController:firstViewController];
    navControl *navControllerSecond = [[navControl alloc] initWithRootViewController:secondViewController];
    
    navController.tabBarItem.title = @"发现";
    navControllerSecond.tabBarItem.title = @"朋友圈";
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    tabBar.viewControllers = @[navControllerSecond,navController];
    
    self.window.rootViewController = tabBar;
    
    view.backgroundColor = [UIColor whiteColor];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
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
