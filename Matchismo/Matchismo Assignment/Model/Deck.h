//
//  Deck.h
//  Matchismo Assignment
//
//  Created by Felicia O'Garro on 7/30/13.
//  Copyright (c) 2013 Stanford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(Card *)drawRandomCard;





@end
