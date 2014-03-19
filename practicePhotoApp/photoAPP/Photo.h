//
//  Photo.h
//  photoAPP
//
//  Created by Felicia O'Garro on 7/6/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Photo : NSManagedObject

@property (nonatomic, retain) id image;
@property (nonatomic, retain) id location;
@property (nonatomic, retain) id tag;
@property (nonatomic, retain) NSManagedObject *user;

@end
