//
//  ViewController.m
//  WKWebView
//
//  Created by Snow on 2019/07/17.
//  Copyright © 2019 Snow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(strong,nonatomic) NSString *webURL;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webURL = @"https://www.google.com";
    //for websites on iphones, cannot do http because security is weak, only https because means secure access (look up iOS ATS).
    //To use http, must insert into Info.plist
    
    NSURL *url = [NSURL URLWithString:self.webURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [_webView loadRequest:request];
}


-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//offline 対策  - alert when offline; not working
/*
- (void)webView:(WKWebView *)WebView didFailLoadWithError:(NSError *)error {
    if ([error code] != NSURLErrorCancelled) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Load Error" message:@"Cannot connect to internet." preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"Reload" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self->_webView reload];
        }]];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
*/

- (IBAction)backBtn:(id)sender {
    if (_webView.canGoBack) {
        [_webView goBack];
    }
}

- (IBAction)forwardBtn:(id)sender {
    if (_webView.canGoForward) {
        [_webView goForward];
    }
}

- (IBAction)reloadBtn:(id)sender {
    [_webView reload];
}

@end
