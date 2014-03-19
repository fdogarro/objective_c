//
//  QCCollectionViewController.h
//  ObjectLibraryMain
//
//  Created by Felicia O'Garro on 6/20/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QCCustomCollectionViewCell.h"

@interface QCCollectionViewController : UIViewController
<UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *coolPhotos;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end
