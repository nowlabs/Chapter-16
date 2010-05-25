//
//  Car.m
//  Chapter 13
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "Car.h"

@implementation Car

- (id)init {
	if (self = [super init]) {
		self.name = @"Car";
		tires = [[NSMutableArray alloc] init];
		int i;
		for (i = 0; i < 4; i++) {
			[tires addObject:[NSNull null]];
		}
	}
	return self;
}

@synthesize name;
@synthesize engine;
@synthesize make;
@synthesize model;
@synthesize modelYear;
@synthesize numberOfDoors;
@synthesize mileage;

-(id)copyWithZone:(NSZone *)zone {
	Car *carCopy;
	carCopy = [[[self class] allocWithZone:zone] init];
	carCopy.name = self.name;
	carCopy.make = self.make;
	carCopy.model = self.model;
	carCopy.numberOfDoors = self.numberOfDoors;
	carCopy.mileage = self.mileage;
	
	Engine *engineCopy = [[engine copy] autorelease];
	carCopy.engine = engineCopy;
	
	int i;
	for (i = 0; i < 4; i++) {
		Tire *tireCopy;
		tireCopy = [[self tireAtIndex:i] copy];
		[tireCopy autorelease];
		[carCopy setTire:tireCopy atIndex:i];
	}
	return carCopy;
	
}

- (void)setTire:(Tire *)tire
		atIndex:(int)index {
	[tires replaceObjectAtIndex:index withObject:tire];
} //setTire:atIndex

-(Tire *)tireAtIndex:(int)index {
	Tire *tire = [tires objectAtIndex:index];
	return tire;
} //tireAtIndex:

- (void)print {
	NSLog(@"%@ has:", self.name);
	NSLog(@"%@", engine);
	for	(int i = 0; i < 4; i++) {
		NSLog(@"%@", [self tireAtIndex:i]);
	}
} //print

- (NSString *)description {
	NSString *desc;
	desc = [NSString stringWithFormat:
			@"%@, a %d %@ %@, has %d doors, %.1f miles and %d tires.",
			name, modelYear, make, model, numberOfDoors, mileage,
			[tires count]];
	return desc;
} //description

- (void) setNilValueForKey:(NSString *)key {
	if ([key isEqualToString:@"mileage"]) {
		mileage = 0;
	} else {
		[super setNilValueForKey:key];
	}
}

- (void)dealloc {
	self.name = nil;
	self.make = nil;
	self.model = nil;
	[tires release];
	[engine release];
	[super dealloc];
}

@end

