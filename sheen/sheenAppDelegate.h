//
//  sheenAppDelegate.h
//  sheen
//
//  Created by bios on 3/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class sheenViewController;

@interface sheenAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet sheenViewController *viewController;

@end
