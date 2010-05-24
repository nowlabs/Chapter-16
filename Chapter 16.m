#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Car *car = [[[Car alloc] init] autorelease];
	car.name = @"Herbie";
	car.make = @"Honda";
	car.model = @"CRX";
	car.numberOfDoors = 2;
	car.modelYear = 1984;
	car.mileage = 110000;
	
	int i;
	for (i = 0; i < 4; i++) {
		AllWeatherRadial *tire;
		tire = [[AllWeatherRadial alloc] init];
		[car setTire:tire atIndex:i];
		[tire release];
	}
	
	Slant6 *engine = [[[Slant6 alloc] init] autorelease];
	car.engine = engine;
	
	NSLog(@"***************");
	NSLog(@"Horsepower is %@",[engine valueForKey:@"horsepower"]);
	[engine setValue:[NSNumber numberWithInt:150]
			  forKey:@"horsepower"];
	NSLog(@"Horsepower has changed to %@",
		  [engine valueForKey:@"horsepower"]);
	NSLog(@"***************");
	[car setValue:[NSNumber numberWithInt:160] 
	   forKeyPath:@"engine.horsepower"];
	NSLog(@"Car's horsepower rating: %@",
		  [car valueForKeyPath:@"engine.horsepower"]);
	NSLog(@"***************");
	NSArray *pressures = [car valueForKeyPath:@"tires.pressure"];
	NSLog(@"Pressures %@", pressures);
	NSLog(@"***************");
	NSLog(@"Car is %@", car);
	
    [pool drain];
    return 0;
}
