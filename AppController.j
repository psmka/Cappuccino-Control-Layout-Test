/*
 * AppController.j
 * NibApplication
 *
 * Created by You on January 27, 2013.
 * Copyright 2013, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
               CPWindow    theWindow; //this "outlet" is connected automatically by the Cib
    @outlet    CPButton    theButton;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
}

- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things.

    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullPlatformWindow:YES];
}

-(@action) pelle:(id) sender {
    CPLog.info("-(@action) pelle:(id) sender -> " + [sender title]);
    if([[theButton title] isEqualToString:@"PelleOlle"]){
        [theButton setTitle:@"Egon"];        
    } else {
        [theButton setTitle:@"PelleOlle"];        
    }
}

@end
