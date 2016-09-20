//
//  ViewController.m
//  Flipissimo
//
//  Created by Dalida Martinez on 9/7/16.
//  Copyright © 2016 Dalida. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong,nonatomic) Deck *deck;

@end

@implementation ViewController

- (Deck *) deck
{
    if (!_deck) _deck = [self createDeck];
    return _deck;
}

- (Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}


-(void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}


- (IBAction)touchCardButton:(UIButton *)sender
{
    if([sender.currentTitle length]){
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:(UIControlStateNormal)];
    [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
    }else{
        Card *card = [self.deck drawRandomCard];
        if(card){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:card.contents forState:UIControlStateNormal];
         self.flipCount++;

        }
    }
}



@end
