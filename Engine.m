//
//  Engine.m
//  Chapter 13
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "Engine.h"


@implementation Engine

- (id)init {
	if (self = [super init]) {
		horsepower = 145;
	}
	return self;
}

- (NSString *)description {
	NSString *desc = [NSString stringWithFormat:
					  @"I am an engine, horsepower rating: %d",
					  horsepower];
	return desc;
	
}

- (id)copyWithZone:(NSZone *)zone {
	Engine *engineCopy;
	engineCopy = [[[self class] allocWithZone:zone] init];
	return engineCopy;
}


@end
