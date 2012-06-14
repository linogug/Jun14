//
//  Jun14AppDelegate.m
//  Jun14
//
//  Created by Lino Guglielmo on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Jun14AppDelegate.h"
#import "Myview.h"

@implementation Jun14AppDelegate

@synthesize window = _window;

- (void)dealloc
{
	[_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   // self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
	UIScreen *screen = [UIScreen mainScreen];
	CGRect applicationFrame = screen.applicationFrame;
	CGRect applicationFrame1 = CGRectMake ((applicationFrame.origin.x), (applicationFrame.origin.y),(applicationFrame.size.width),(applicationFrame.size.height)/2);
	CGRect applicationFrame2 = CGRectMake ((applicationFrame.origin.x), (applicationFrame.size.height)/2,(applicationFrame.size.width),(applicationFrame.size.height)/2);	
	CGRect bounds = screen.bounds;
	
	view1 = [[Myview alloc] initWithFrame:applicationFrame1];
	view2 = [[Myview alloc] initWithFrame:applicationFrame2];
	self.window = [[UIWindow alloc] initWithFrame: bounds];
	
	
    // Override point for customization after application launch.
  //  self.window.backgroundColor = [UIColor yellowColor];
   
	
	[self.window addSubview: view1];
	 [view1 setcolor:[UIColor redColor]];
	NSURL *url = [[NSURL alloc] initWithString:@"http://finance.yahoo.com/d/quotes.csv?s=GE&f=sl1t1"];
	
	NSError *error;
	NSString *string = [[NSString alloc] initWithContentsOfURL: url encoding: NSUTF8StringEncoding error: &error];
	if (string == nil) {
		string = [error localizedDescription];	
	}
	[view1 setstring: string];
	[view1 setpoint: 10 : 55];
	
	
	[self.window addSubview: view2];
	[view2 setcolor:[UIColor yellowColor]];
//	UIDevice *device = [UIDevice currentDevice];
//	NSString *devicestring = device.systemVersion;
//	[view2 setstring: devicestring];
//	[view2 setpoint: 0.00 :50];
	
	[self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
	[view1 setNeedsDisplay];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
