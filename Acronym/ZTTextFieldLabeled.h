//
//  ZTTextFieldLabeled.h
//  acronymlookup
//
//  Created by zhen tan on 7/2/15.
//  Copyright (c) 2015 zhen tan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZTTextFieldLabeled : UIView

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIButton *button;
@property (nonatomic, copy) void (^buttonActionBlock)();

@end
