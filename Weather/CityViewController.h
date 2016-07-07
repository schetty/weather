//
//  CityViewController.h
//  Weather
//
//  Created by naomi schettini on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityViewController : UIViewController

@property UIButton* tabButton;

@property City* city;

@property UILabel* detailsLabel;

@property UILabel* temperatureInfo;

@property UILabel* chanceOfRainLabel;

@end
