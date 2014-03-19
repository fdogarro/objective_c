//
//  QCSignInViewController.h
//  photoAPP
//
//  Created by Felicia O'Garro on 7/5/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "QCCreateAccountViewController.h"

@protocol QCSignInViewControllerDelegate <NSObject>

-(void)signInSuccessful;

@end

@interface QCSignInViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageBackground;
@property (strong, nonatomic) IBOutlet UILabel *headerLabel;
@property (strong, nonatomic) IBOutlet UITextField *mainUserTextField;
@property (strong, nonatomic) IBOutlet UITextField *mainPasswordTextField;

@property (nonatomic, weak) id <QCSignInViewControllerDelegate> delegate;

@property (strong, nonatomic)NSArray *users;

- (IBAction)signInButton:(UIButton *)sender;
- (IBAction)createAccountButton:(UIButton *)sender;

@end
