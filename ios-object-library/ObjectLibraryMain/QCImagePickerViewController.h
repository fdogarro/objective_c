//
//  QCImagePickerViewController.h
//  ObjectLibraryMain
//
//  Created by Felicia O'Garro on 6/20/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QCImagePickerViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)selectPhoto:(id)sender;

@end
