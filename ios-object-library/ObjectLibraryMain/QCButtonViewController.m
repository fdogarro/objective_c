//
//  QCButtonViewController.m
//  ObjectLibraryMain
//
//  Created by Felicia O'Garro on 8/10/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import "QCButtonViewController.h"

@interface QCButtonViewController ()

@end

@implementation QCButtonViewController

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
    self.mainButton.backgroundColor = [UIColor redColor];
    self.mainButton.frame = CGRectMake(30, 50, 100, 30);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressButton:(UIButton *)sender {
    NSLog(@"button was Pressed");
    
    [self.mainButton setTitle:@"hit button" forState:UIControlStateNormal];
}
@end
