//
//  AllWeatherRadial.m
//  Chapter 13
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "AllWeatherRadial.h"


@implementation AllWeatherRadial

@synthesize rainHandling;
@synthesize snowHandling;

- (id)initWithPressure:(float)newPressure 
		 andTreadDepth:(float)newTreadDepth {
	if (self = [super initWithPressure:newPressure 
						 andTreadDepth:newTreadDepth]) {
		rainHandling = 23.7;
		snowHandling = 42.5;
	}
	return self;
}

- (id)copyWithZone:(NSZone *)zone {
	AllWeatherRadial *tireCopy = [super copyWithZone:zone];
	[tireCopy setRainHandling:rainHandling];
	[tireCopy setSnowHandling:snowHandling];
	return tireCopy;
}

- (NSString *)description {
	NSMutableString *desc = 
	[NSMutableString stringWithString:[super description]];
	[desc appendFormat:
	 @", RainHandling: %.1f, SnowHandling: %.1f", 
	 rainHandling, snowHandling];
	return desc;
}

@end
