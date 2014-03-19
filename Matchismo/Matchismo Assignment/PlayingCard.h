//
//  PlayingCard.h
//  Matchismo Assignment
//
//  Created by Felicia O'Garro on 8/3/13.
//  Copyright (c) 2013 Stanford. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+(NSArray *)validSuits;
+(NSUInteger)maxRank;


@end
