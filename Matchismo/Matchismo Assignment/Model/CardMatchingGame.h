//
//  CardMatchingGame.h
//  Matchismo Assignment
//
//  Created by Felicia O'Garro on 8/4/13.
//  Copyright (c) 2013 Stanford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

-(id)initWithCardCount:(NSUInteger)cardCount usingDeck:(Deck *)deck;
-(void)flipCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;
@property (nonatomic, readonly) int score;


@end
