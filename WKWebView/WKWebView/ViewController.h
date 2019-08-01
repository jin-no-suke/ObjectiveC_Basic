//
//  ViewController.h
//  WKWebView
//
//  Created by Snow on 2019/07/17.
//  Copyright © 2019 Snow. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet WKWebView *webView;

- (IBAction)backBtn:(id)sender;
- (IBAction)forwardBtn:(id)sender;
- (IBAction)reloadBtn:(id)sender;

@end

