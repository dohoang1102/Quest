//
//  QuestAppDelegate.h
//  Quest
//
//

#import <UIKit/UIKit.h>

@interface QuestAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow *window;
	IBOutlet UIWebView		*webView;
	IBOutlet UITextField	*uriField;
	IBOutlet UIBarButtonItem *backButton;
	IBOutlet UIBarButtonItem *fwdButton;
	IBOutlet UIProgressView  *progressView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction)loadUrl: (UITextField *) sender;

@end

