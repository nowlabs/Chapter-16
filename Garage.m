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

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
	if (stuff == nil) {
		stuff = [[NSMutableDictionary alloc] init];
	}
	[stuff setValue:value forKey:key];
}

- (id)valueForUndefinedKey:(NSString *)key {
	id value = [stuff valueForKey:key];
	return value;
}

- (void)print {
	NSLog(@"%@:", name);
	for (Car *car in cars) {
		NSLog(@" %@", car);
	}
}

- (void)dealloc {
	[name release];
	[cars release];
	[stuff dealloc];
	[super dealloc];
}

@end
