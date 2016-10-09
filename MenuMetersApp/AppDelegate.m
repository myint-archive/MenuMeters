//
//  AppDelegate.m
//  MenuMetersApp
//
//  Created by Yuji on 2015/07/30.
//
//

#import "AppDelegate.h"
#import "MenuMeterCPUExtra.h"
#import "MenuMeterDiskExtra.h"
#import "MenuMeterMemExtra.h"
#import "MenuMeterNetExtra.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate
{
    MenuMeterCPUExtra*cpuExtra;
    MenuMeterDiskExtra*diskExtra;
    MenuMeterNetExtra*netExtra;
    MenuMeterMemExtra*memExtra;
    
    
    NSTimer*timer;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    memExtra=[[MenuMeterMemExtra alloc] initWithBundle:[NSBundle mainBundle]];

    netExtra=[[MenuMeterNetExtra alloc] initWithBundle:[NSBundle mainBundle]];

    diskExtra=[[MenuMeterDiskExtra alloc] initWithBundle:[NSBundle mainBundle]];

    cpuExtra=[[MenuMeterCPUExtra alloc] initWithBundle:[NSBundle mainBundle]];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
