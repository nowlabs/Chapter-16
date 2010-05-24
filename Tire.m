
#import "Tire.h"


@implementation Tire

- (id)init {
	if (self = [self initWithPressure:34.0 
						andTreadDepth:20.0]) {
	}
	return self;
}

- (id)initWithPressure:(float)newPressure {
	if (self = [self initWithPressure:newPressure 
						andTreadDepth:20.0]) {
	}
	return self;
}

- (id)initWithTreadDepth:(float)newTreadDepth {
	if (self = [self initWithPressure:34.0 
						andTreadDepth:newTreadDepth]) {
	}
	return self;
}

- (id)initWithPressure:(float)newPressure 
		 andTreadDepth:(float)newTreadDepth {
	if (self = [super init]) {
		pressure = newPressure;
		treadDepth = newTreadDepth;
	}
	return self;
}

- (id)copyWithZone:(NSZone *)zone {
	Tire *tireCopy;
	tireCopy = [[[self class] allocWithZone:zone]
				initWithPressure:pressure
				andTreadDepth:treadDepth];
	return tireCopy;
} //copyWithZone

- (void)setPressure:(float)newPressure {
	pressure = newPressure;
}

- (float)pressure {
	return pressure;
}

- (void)setTreadDepth:(float)newTreadDepth {
	treadDepth = newTreadDepth;
}

- (float)treadDepth {
	return treadDepth;
}

- (NSString *)description {
	NSString *desc = 
	[NSString stringWithFormat:
	 @"Tire:: Pressure:%.1f, TreadDepth: %.1f", pressure, treadDepth];
	return desc;
}

@end
