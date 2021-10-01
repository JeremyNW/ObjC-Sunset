//
//  ViewController.h
//  ObjCSunset
//
//  Created by Jeremy Warren on 9/30/21.
//

#import <UIKit/UIKit.h>
#import "SunsetManager.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *sunsetLabel;
@property (weak, nonatomic) IBOutlet UILabel *sunriseLabel;
@property (weak, nonatomic) IBOutlet UILabel *dayNoonLabel;
@property (weak, nonatomic) IBOutlet UILabel *dayLengthLabel;



@end

