//
//  ZTHelper.h
//  Acronym
//
//  Created by Deopura on 03/10/2017.
//  Copyright (c) 2017 Deopura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "AcromineClient.h"
#import "MBProgressHUD.h"

@interface ZTHelper : NSObject

+ (void)showOKAlertWithTitle:(NSString *)title message:(NSString *)message;
+ (void)showOKAlertWithError:(NSError *)error;

@end
