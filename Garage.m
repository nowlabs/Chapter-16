//
//  Garage.m
//  Chapter 16
//
//  Created by Thomas Eapen on 10-05-24.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "Garage.h"


@implementation Garage

@synthesize name;

- (void)addCar:(Car *)car {
	if (cars == nil) {
		cars = [[NSMutableArray alloc] init];
	}
	[cars addObject:car];
} //addCar

- (void)print {
	NSLog(@"%@:", name);
	for (Car *car in cars) {
		NSLog(@" %@", car);
	}
}

- (void)dealloc {
	[name release];
	[cars release];
	[super dealloc];
}

@end
