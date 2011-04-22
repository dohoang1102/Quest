//
//  QuestAppDelegate.h
//  Quest
//
//  Created by 渡辺 悟史 on 11/04/22.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow *window;
	IBOutlet UIWebView *webView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction)loadUrl: (UITextField *) sender;

@end

