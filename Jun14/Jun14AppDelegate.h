//
//  Jun14AppDelegate.h
//  Jun14
//
//  Created by Lino Guglielmo on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Myview;

@interface Jun14AppDelegate : UIResponder <UIApplicationDelegate>{
	Myview *view1;
	Myview *view2;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
