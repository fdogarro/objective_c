//
//  QCSignInViewController.m
//  photoAPP
//
//  Created by Felicia O'Garro on 7/5/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import "QCSignInViewController.h"

@interface QCSignInViewController ()

@end

@implementation QCSignInViewController

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
    
    self.mainUserTextField.delegate = self;
    self.mainPasswordTextField.delegate = self;
    
    self.users = [User findAll];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    self.users = [User findAll];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signInButton:(UIButton *)sender {
    
    BOOL signInSuccessful = NO;
    
    for (int x = 0; x < self.users.count; x++) {
        
    User *user = [self.users objectAtIndex:x];
        if([user.userName isEqualToString:self.mainUserTextField.text] && [user.password isEqualToString:self.mainPasswordTextField]){
            signInSuccessful = YES;
            
    }
    }
    
if (signInSuccessful == YES)
{
    [self.navigationController popViewControllerAnimated:YES];
    [self.delegate signInSuccessful];

}
else
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Log In Not Successful" message:@"Email and Password not found" delegate: nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];

    }
    
}

- (IBAction)createAccountButton:(UIButton *)sender
{
    
    QCCreateAccountViewController *createAccountViewController = [[QCCreateAccountViewController alloc]initWithNibName:nil bundle:nil];
    
    [self.navigationController pushViewController:createAccountViewController animated:YES];
}

#pragma mark -UITextField Delegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.mainUserTextField resignFirstResponder];
    [self.mainPasswordTextField resignFirstResponder];
    return YES;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesBegan:withEvent:");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}



@end

