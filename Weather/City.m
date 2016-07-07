//
//  City.m
//  Weather
//
//  Created by naomi schettini on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City


-(NSString*) currentTemp {
    
    return [NSString stringWithFormat:@"Current Temperature is: %i C", self.currentTempInt];
}
-(NSString*) chanceOfRain {
    
    return [NSString stringWithFormat:@"The chance of Rain is: %i  %%", self.chanceOfRainInt];
}
@end
