//
//  QCAppDelegate.h
//  ObjectLibraryMain
//
//  Created by Felicia O'Garro on 6/19/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QCImagePickerViewController.h"
#import "QCCollectionViewController.h"
#import "QCLabelViewController.h"
#import "QCButtonViewController.h"
#import "QCTextFieldViewController.h"

@class QCViewController;

@interface QCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QCViewController *viewController;

@end
