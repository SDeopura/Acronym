//
//  ZTTextFieldLabeled.m
//  acronymlookup
//
//  Created by zhen tan on 7/2/15.
//  Copyright (c) 2015 zhen tan. All rights reserved.
//

#import "ZTTextFieldLabeled.h"

@interface ZTTextFieldLabeled ()

@property (assign, nonatomic) BOOL isEditing;

@end

@implementation ZTTextFieldLabeled

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    UIView *view = [[[NSBundle bundleForClass:[self class]] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] firstObject];
    view.frame = self.bounds;
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:view];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    
    //making the entire view touchable
    UITapGestureRecognizer *singleFingerTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap)];
    singleFingerTap.cancelsTouchesInView = NO; //add this line
    [self addGestureRecognizer:singleFingerTap];
    
    // Default keyboard types
    self.textField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.textField.returnKeyType = UIReturnKeyDone;
}

- (void)onTap
{
    if (!self.textField.userInteractionEnabled)
        return;
    self.isEditing = !self.isEditing;
    if (self.isEditing) {
        [self.superview.superview.superview endEditing:YES];
    } else {
        [self.textField becomeFirstResponder];
    }
}

- (IBAction)onButtonPress:(id)sender {
    if (self.buttonActionBlock)
        [self.buttonActionBlock invoke];
}

@end
