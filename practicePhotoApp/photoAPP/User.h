//
//  User.h
//  photoAPP
//
//  Created by Felicia O'Garro on 7/6/13.
//  Copyright (c) 2013 Access. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Photo;

@interface User : NSManagedObject

@property (nonatomic, retain) NSString * userName;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) Photo *photo;

@end
