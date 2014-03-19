//
//  QCProfileViewController.h
//  photoAPP
//
//  Created by Felicia O'Garro on 7/8/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QCProfileViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *profileImage;
@property (strong, nonatomic) IBOutlet UILabel *topPhotoLabel;
@property (strong, nonatomic) IBOutlet UILabel *bottomPhotoLabel;
@property (strong, nonatomic) IBOutlet UILabel *topFollowerLabel;
@property (strong, nonatomic) IBOutlet UILabel *bottomFollowerLabel;
@property (strong, nonatomic) IBOutlet UILabel *topFollowingLabel;
@property (strong, nonatomic) IBOutlet UILabel *bottomFollowingLabel;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *namefieldLabel;
@property (strong, nonatomic) IBOutlet UILabel *locationLabel;
@property (strong, nonatomic) IBOutlet UILabel *locationFieldLabel;
@property (strong, nonatomic) IBOutlet UICollectionView *profileStream;
@property (strong, nonatomic) NSMutableArray *profileStreamArray;

@end
