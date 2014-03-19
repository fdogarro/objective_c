//
//  QCViewController.m
//  Matchismo Assignment
//
//  Created by Felicia O'Garro on 7/30/13.
//  Copyright (c) 2013 Stanford. All rights reserved.
//

#import "QCViewController.h"
#import "PlayingCardDeck.h"

@interface QCViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck *deck;

@end

@implementation QCViewController

-(Deck *)deck
{
    if(!_deck)_deck = [[PlayingCardDeck alloc]init];
    return _deck;
}

- (void)setCardButtons:(NSArray *)cardButtons
{
    for (UIButton *cardButton in cardButtons){
        Card *card = [self.deck drawRandomCard];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
}

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"flips: %d", self.flipCount];
    //NSLog(@"flips updated to %d", self.flipCount);

}

- (IBAction)flipCard:(UIButton *)sender {
    
    sender.selected= !sender.isSelected;
    self.flipCount++;

}

@end
