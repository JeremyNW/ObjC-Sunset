//
//  Sunset.h
//  ObjCSunset
//
//  Created by Jeremy Warren on 9/30/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sunset : NSObject

@property NSString *sunset;
@property NSString *sunrise;
@property NSString *solar_noon;
@property NSString *day_length;

- (instancetype) initWithName:(NSString *)sunset
                      sunrise:(NSString *)sunrise
                   solar_noon:(NSString *)solar_noon
                   day_length:(NSString *)day_length;



@end

NS_ASSUME_NONNULL_END
