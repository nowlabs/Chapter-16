//
//  AllWeatherRadial.h
//  Chapter 13
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Tire.h"

@interface AllWeatherRadial : Tire {
	float rainHandling;
	float snowHandling;
}

@property float rainHandling;
@property float snowHandling;

@end
