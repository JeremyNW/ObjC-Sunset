//
//  SunsetManager.h
//  ObjCSunset
//
//  Created by Jeremy Warren on 9/30/21.
//

#import <Foundation/Foundation.h>
#import "Sunset.h"

NS_ASSUME_NONNULL_BEGIN

@interface SunsetManager : NSObject

+ (void) fetchSunsetWithCompletion:(void (^) (Sunset *sunset))completion;

@end

NS_ASSUME_NONNULL_END
