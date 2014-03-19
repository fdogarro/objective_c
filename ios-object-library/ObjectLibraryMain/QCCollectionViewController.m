//
//  QCCollectionViewController.m
//  ObjectLibraryMain
//
//  Created by Felicia O'Garro on 6/20/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import "QCCollectionViewController.h"

@interface QCCollectionViewController ()

@end

@implementation QCCollectionViewController

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
    UIImage *image = [UIImage imageNamed:@"eagle.png"];
    
    if (!self.coolPhotos) {
        self.coolPhotos = [[NSMutableArray alloc]initWithObjects:image, image, image, image,image, nil];
    }
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    //setup collectionview
    
    [self.collectionView registerClass:[QCCustomCollectionViewCell class] forCellWithReuseIdentifier:@"customCollectionViewCell"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark – UICollectionViewDataSource

-(NSInteger)collectionView:(UICollectionView *)colletionView numberOfItemsInSection:(NSInteger)section
{
    return self.coolPhotos.count;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView

{
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"customCollectionViewCell";
    
    QCCustomCollectionViewCell *cell = (QCCustomCollectionViewCell *) [self.collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.imageView.image = [self.coolPhotos objectAtIndex:indexPath.row];
                                                                       
    return cell;

}
                                                                       
                                                                
#pragma mark - UICollectionViewDelegate
                                                                       
-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{

}
                                                                       
@end
