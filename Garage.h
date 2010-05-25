//
//  Garage.h
//  Chapter 16
//
//  Created by Thomas Eapen on 10-05-24.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Car;

@interface Garage : NSObject {
	NSString *name;
	NSMutableArray *cars;
	NSMutableDictionary *stuff;
}

@property(readwrite, copy) NSString *name;

- (void)addCar:(Car *)car;
- (void)print;

@end //Garage
