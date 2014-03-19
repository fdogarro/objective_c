//
//  QCSecondViewController.m
//  Access_Code_DatingApp
//
//  Created by Felicia O'Garro on 6/22/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import "QCSecondViewController.h"

@interface QCSecondViewController ()

@end

@implementation QCSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
