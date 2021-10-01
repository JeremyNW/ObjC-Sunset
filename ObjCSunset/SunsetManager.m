//
//  SunsetManager.m
//  ObjCSunset
//
//  Created by Jeremy Warren on 9/30/21.
//

#import "SunsetManager.h"

@implementation SunsetManager

+ (void)fetchSunsetWithCompletion:(void (^) (Sunset *sunset))completion {
    
    NSURL *url = [NSURL URLWithString:@"https://api.sunrise-sunset.org/json"];
    NSURLComponents *components = [NSURLComponents componentsWithURL:url resolvingAgainstBaseURL:YES];
    NSURLQueryItem *latitudeQueryItem = [NSURLQueryItem queryItemWithName:@"lat" value:@"40.2969"];
    NSURLQueryItem *longitudeQueryItem = [NSURLQueryItem queryItemWithName:@"lng" value:@"111.6946"];
    components.queryItems = @[latitudeQueryItem, longitudeQueryItem];
    NSURL *finalURL = components.URL;
    
    NSLog(@"%@", finalURL);
    
    [[NSURLSession.sharedSession dataTaskWithURL:finalURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                 
        if (error) {
            NSLog(@"%@", error.localizedDescription);
            completion(NULL);
            return;
        }
        
        if (!data) {
            completion(NULL);
            return;
        }
        
        
        // decode
        
        
        
        NSDictionary *apiResponse = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        NSDictionary *results = apiResponse[@"results"];
        
        NSString *sunrise = results[@"sunrise"];
        NSString *sunset = results[@"sunset"];
        NSString *solar_noon = results[@"solar_noon"];
        NSString *day_length = results[@"day_length"];
      
        Sunset *sunzet = [[Sunset alloc] initWithName:sunset sunrise:sunrise solar_noon:solar_noon day_length:day_length];
        
        completion(sunzet);
        
    }] resume];
}

@end
