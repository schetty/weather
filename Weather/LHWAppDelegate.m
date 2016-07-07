//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Don't forget to assign the window a rootViewController
    
    UITabBarController * tabBar = [[UITabBarController alloc]init];
    self.window.rootViewController = tabBar;
    
    self.window.backgroundColor = [UIColor grayColor];
    
    // create cities
    City * city1 = [[City alloc] init];
    city1.cityName = @"Maputo";
    city1.currentTempInt = 15;
    city1.chanceOfRainInt = 30;
    city1.image = [UIImage imageNamed:@"fog.png"];
    
    City * city2 = [[City alloc] init];
    city2.cityName = @"Gaborone";
    city2.currentTempInt = 12;
    city2.chanceOfRainInt = 25;
    city2.image = [UIImage imageNamed:@"snow.png"];
    
    City * city3 = [[City alloc] init];
    city3.cityName = @"Dakar";
    city3.currentTempInt = 35;
    city3.chanceOfRainInt = 80;
    city3.image = [UIImage imageNamed:@"wind.png"];
    
    City * city4 = [[City alloc] init];
    city4.cityName = @"Kathmandu";
    city4.currentTempInt = 18;
    city4.chanceOfRainInt = 10;
    city4.image = [UIImage imageNamed:@"sleet.png"];
    
    City * city5 = [[City alloc] init];
    city5.cityName = @"Caracas";
    city5.currentTempInt = 40;
    city5.chanceOfRainInt = 100;
    city5.image = [UIImage imageNamed:@"rain.png"];
    
    CityViewController *cityVC = [[CityViewController alloc] init];
    cityVC.title = @"Maputo";
    cityVC.city = city1;
    cityVC.view.backgroundColor = [UIColor colorWithRed:78.0/255.0 green:255.0/255.0 blue:239.0/255.0 alpha:1.0];// [@4EFFEF];
  //  cityVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:city1.cityName image:[UIImage imageNamed:@"fog.png"] tag:0];
    
    
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:cityVC];
    
    CityViewController *cityVC2 = [[CityViewController alloc] init];
    cityVC2.title = @"Gaborone";
    cityVC2.city = city2;
    cityVC2.view.backgroundColor = [UIColor colorWithRed:115.0/255.00 green:166.0/255.0 blue:173.0/255.0 alpha:1.0];
    UINavigationController *navController2 = [[UINavigationController alloc]initWithRootViewController:cityVC2];
  
    

    CityViewController *cityVC3 = [[CityViewController alloc] init];
    cityVC3.title = @"Dakar";
    cityVC3.city = city3;
    cityVC3.view.backgroundColor = [UIColor colorWithRed:155.0/255.0 green:151.0/255.0 blue:178.0/255.0 alpha:1.0];
    UINavigationController *navController3 = [[UINavigationController alloc]initWithRootViewController:cityVC3];

    
    CityViewController *cityVC4 = [[CityViewController alloc] init];
    cityVC4.city = city4;
    cityVC4.view.backgroundColor = [UIColor colorWithRed:216.0/255.0 green:167.0/255.0 blue:202.0/255.0 alpha:1.0];
    cityVC4.title = @"Kathmandu";
    UINavigationController *navController4 = [[UINavigationController alloc]initWithRootViewController:cityVC4];
    
    
    CityViewController *cityVC5 = [[CityViewController alloc] init];
    cityVC5.city = city5;
    cityVC5.view.backgroundColor = [UIColor colorWithRed:199.0/255.0 green:184.0/255.0 blue:234.0/255.0 alpha:1.0];
    cityVC5.title = @"Caracas";
    UINavigationController *navController5 = [[UINavigationController alloc]initWithRootViewController:cityVC5];
    
    
    
    [tabBar setViewControllers:@[navController, navController2, navController3, navController4, navController5]
                      animated:NO];
    
    [self.window makeKeyAndVisible];
    return YES;
}



@end
