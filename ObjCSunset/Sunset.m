//
//  Sunset.m
//  ObjCSunset
//
//  Created by Jeremy Warren on 9/30/21.
//

#import "Sunset.h"

@implementation Sunset

- (instancetype)initWithName:(NSString *)sunset sunrise:(NSString *)sunrise solar_noon:(NSString *)solar_noon day_length:(NSString *)day_length {
    self = [super init];
    
    if (self) {
        _sunset = sunset;
        _sunrise = sunrise;
        _solar_noon = solar_noon;
        _day_length = day_length;
    }
    return self;
}

@end
