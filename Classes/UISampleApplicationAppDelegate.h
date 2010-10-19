//
//  UISampleApplicationAppDelegate.h
//  UISampleApplication
//
//  Created by ogaoga on 10/10/19.
//  Copyright ogaoga.org 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UISampleApplicationViewController;

@interface UISampleApplicationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UISampleApplicationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UISampleApplicationViewController *viewController;

@end

