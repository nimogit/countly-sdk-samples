// ExtensionDelegate.m
//
// This code is provided under the MIT License.
//
// Please visit www.count.ly for more information.

#import "ExtensionDelegate.h"
#import "Countly.h"

@implementation ExtensionDelegate

- (void)applicationDidFinishLaunching
{
    CountlyConfig* config = CountlyConfig.new;
    config.appKey = @"YOUR_APP_KEY";
    config.host = @"https://YOUR_COUNTLY_SERVER";
//  config.deviceID = @"customDeviceID"                               //Optional custom or system generated device ID
//  config.features = @[CLYAPM];                                      //Optional features
    [Countly.sharedInstance startWithConfig:config];
}

- (void)applicationDidBecomeActive
{
    [Countly.sharedInstance resume];
}

- (void)applicationWillResignActive
{
    [Countly.sharedInstance suspend];
}

@end
