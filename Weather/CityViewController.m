//
//  CityViewController.m
//  Weather
//
//  Created by naomi schettini on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "City.h"

@interface CityViewController ()

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:self.city.cityName image:self.city.image tag:0];
   
    self.tabButton = [[UIButton alloc]init];
    self.detailsLabel = [[UILabel alloc]init];
    self.temperatureInfo = [[UILabel alloc]init];
    self.chanceOfRainLabel = [[UILabel alloc]init];
    
    [self.view addSubview: self.detailsLabel];
    self.detailsLabel.text = self.city.cityName;
    
    [self.view addSubview: self.temperatureInfo];
    
    self.temperatureInfo.text = self.city.currentTemp;
    [self.view addSubview: self.chanceOfRainLabel];
    self.chanceOfRainLabel.text = self.city.chanceOfRain;
    self.detailsLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.temperatureInfo.translatesAutoresizingMaskIntoConstraints = NO;
    self.chanceOfRainLabel.translatesAutoresizingMaskIntoConstraints = NO;

    
    
    
    //City Name Label
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.detailsLabel
                                                                 attribute:NSLayoutAttributeCenterX
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeCenterX
                                                                multiplier:1.0
                                                                  constant:0.0]];

    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem: self.detailsLabel
                                                                 attribute:NSLayoutAttributeCenterY
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeCenterY
                                                                multiplier:0.5
                                                                  constant:0.0]];
    //Temperature Labels
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.temperatureInfo
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem: self.temperatureInfo
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:0.68
                                                           constant:0.0]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.chanceOfRainLabel
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem: self.chanceOfRainLabel
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:0.79
                                                           constant:0.0]];

    
    [self.view setNeedsUpdateConstraints];
    

   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
