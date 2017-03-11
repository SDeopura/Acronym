//
//  ZTHelper.m
//  Acronym
//
//  Created by Deopura on 03/10/2017.
//  Copyright (c) 2017 Deopura. All rights reserved.
//

#import "ZTHelper.h"

@implementation ZTHelper

+ (void)showOKAlertWithTitle:(NSString *)title message:(NSString *)message {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}


+ (void)showOKAlertWithError:(NSError *)error {
    [self showOKAlertWithTitle:@"Error" message:error.localizedDescription];
    NSLog(@"%@", error.localizedDescription);
}

@end
