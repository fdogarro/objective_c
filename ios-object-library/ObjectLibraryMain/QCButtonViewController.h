//
//  QCButtonViewController.h
//  ObjectLibraryMain
//
//  Created by Felicia O'Garro on 8/10/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QCButtonViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *mainButton;
- (IBAction)pressButton:(UIButton *)sender;

@end
