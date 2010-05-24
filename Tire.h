
#import <Cocoa/Cocoa.h>


@interface Tire : NSObject <NSCopying> {
	float pressure;
	float treadDepth;
}

- (id)initWithPressure:(float)newPressure 
		 andTreadDepth:(float)newTreadDepth;
- (id)initWithPressure:(float)newPressure;
- (id)initWithTreadDepth:(float)newTreadDepth;

- (void)setPressure:(float)newPressure;
- (float) pressure;
- (void)setTreadDepth:(float)newTreadDepth;
- (float)treadDepth;

@end
