//
//  ViewController.m
//  ObjCSunset
//
//  Created by Jeremy Warren on 9/30/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SunsetManager fetchSunsetWithCompletion:^(Sunset * _Nonnull sunset) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.sunsetLabel.text = sunset.sunset;
            self.sunriseLabel.text = sunset.sunrise;
            self.dayNoonLabel.text = sunset.solar_noon;
            self.dayLengthLabel.text = sunset.day_length;
            
        });
    }];
}


@end
