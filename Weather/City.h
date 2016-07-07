//
//  City.h
//  Weather
//
//  Created by naomi schettini on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject


//@property NSArray* weatherConditions;

@property NSString* cityName;

@property int currentTempInt;
@property int chanceOfRainInt;

-(NSString*) currentTemp;
-(NSString*) chanceOfRain;

@property UIImage *image;





@end
