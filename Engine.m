//
//  Engine.m
//  Chapter 13
//
//  Created by Thomas Eapen on 10-04-12.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "Engine.h"


@implementation Engine

- (NSString *)description {
	return @"I am an engine, vrrooom";
}

- (id)copyWithZone:(NSZone *)zone {
	Engine *engineCopy;
	engineCopy = [[[self class] allocWithZone:zone] init];
	return engineCopy;
}


@end
