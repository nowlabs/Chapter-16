//
//  Car.h
//  Chapter 13
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Tire;
@class Engine;

@interface Car : NSObject <NSCopying>
{
	NSString *name;
	Engine *engine;
	NSMutableArray *tires;
	
	NSString *make;
	NSString *model;
	int modelYear;
	int numberOfDoors;
	float mileage;
}

@property (readwrite, copy) NSString *name;
@property (readwrite, retain) Engine *engine;

@property (readwrite, copy) NSString *make;
@property (readwrite, copy) NSString *model;
@property (readwrite) int modelYear;
@property (readwrite) int numberOfDoors;
@property (readwrite) float mileage;

- (Tire *)tireAtIndex:(int)index;
- (void)setTire:(Tire *)tire
		atIndex:(int)index;
- (void)print;

@end //Car Interface

