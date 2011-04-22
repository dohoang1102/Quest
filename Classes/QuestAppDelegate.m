//
//  QuestAppDelegate.m
//  Quest
//
//

#import "QuestAppDelegate.h"

@implementation QuestAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	NSString *urlStr = @"http://www.google.com";
	NSURL *url = [NSURL URLWithString: urlStr];
	NSURLRequest *urlReq = [NSURLRequest requestWithURL: url];
	[webView loadRequest: urlReq];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}

- (BOOL) webView: (UIWebView *) view
shouldStartLoadWithRequest: (NSURLRequest *)req
navigationType: (UIWebViewNavigationType) navType
{
	return (YES);
}

- (void) updateWebBrowser {
	BOOL loading = webView.loading;
	
	NSURL *url = [webView.request URL];
	NSString *urlStr = [url absoluteString];
	uriField.text = urlStr;
	
	backButton.enabled = webView.canGoBack;
	fwdButton.enabled = webView.canGoForward;
}

- (void) webViewDidStartLoad : (UIWebView *)view
{
	[self updateWebBrowser];
	progressView.progress = 0;
}

- (void) webViewDidFinishLoad: (UIWebView *)view
{
	[self updateWebBrowser];
	progressView.progress = 100;
}

- (IBAction)loadUrl : (UITextField *) sender {
	NSString *urlStr = [sender text];
	NSURL *url = [NSURL URLWithString: urlStr];
	NSURLRequest *urlReq = [NSURLRequest requestWithURL: url];
	[webView loadRequest: urlReq];
}

@end
