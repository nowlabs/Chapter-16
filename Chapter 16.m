#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"
#import "Garage.h"

Car *makeCar(NSString *name, NSString *make, NSString *model,
			 int modelYear, int numberOfDoors, float mileage,
			 int horsepower) {
	Car *car = [[[Car alloc] init] autorelease];
	car.name = name;
	car.make = make;
	car.model = model;
	car.numberOfDoors = numberOfDoors;
	car.modelYear = modelYear;
	car.mileage = mileage;
	
	Slant6 *engine = [[[Slant6 alloc] init] autorelease];
	[engine setValue:[NSNumber numberWithInt:150]
			  forKey:@"horsepower"];
	car.engine = engine;
	
	int i;
	for (i = 0; i < 4; i++) {
		Tire *tire = [[[Tire alloc] init] autorelease];
		[car setTire:tire atIndex:i];
	}
	
	return car;
} //makeCar

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Garage *garage = [[Garage alloc] init];
	garage.name = @"Joe's Garage";
	
	Car *car;
	car = makeCar(@"Herbie", @"Honda", @"CRX", 
				  1984, 2, 110000, 134);
	[garage addCar:car];
	car = makeCar(@"Badger", @"Acura", @"Integra", 
				  1987, 5, 217324, 158);
	[garage addCar:car];
	
	[garage print];
	[garage release];
    [pool drain];
    return 0;
}
