//
//  QCLabelViewController.m
//  ObjectLibraryMain
//
//  Created by Felicia O'Garro on 8/9/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import "QCLabelViewController.h"

@interface QCLabelViewController ()

@end

@implementation QCLabelViewController

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
    self.helloLabel.text = @"Hello World";
    self.helloLabel.textColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
