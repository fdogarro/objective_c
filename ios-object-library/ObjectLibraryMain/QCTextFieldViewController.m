//
//  QCTextFieldViewController.m
//  ObjectLibraryMain
//
//  Created by Felicia O'Garro on 8/10/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import "QCTextFieldViewController.h"

@interface QCTextFieldViewController ()

@end

@implementation QCTextFieldViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.passwordTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"return key pressed");
    [self.passwordTextField resignFirstResponder];
    return YES;
}

@end
