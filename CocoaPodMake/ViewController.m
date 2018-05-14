//
//  ViewController.m
//  CocoaPodMake
//
//  Created by M Usman Saeed on 14/05/2018.
//  Copyright © 2018 SAS Studio. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btnTest:(id)sender {

    // GET
    NSURL *URL = [NSURL URLWithString:@"http://google.com"];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:URL.absoluteString
      parameters:nil
        progress:nil
         success:^(NSURLSessionTask *task, id responseObject) {
             NSLog(@"JSON: %@", responseObject);
         }
         failure:^(NSURLSessionTask *operation, NSError *error) {
             NSLog(@"Error: %@", error);
         }
     ];

}




@end
