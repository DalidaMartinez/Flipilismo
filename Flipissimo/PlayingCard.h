//
//  PlayingCard.h
//  Flipissimo
//
//  Created by Dalida Martinez on 9/19/16.
//  Copyright © 2016 Dalida. All rights reserved.
//

#import "Card.h"


@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger *) maxRank;
+ (NSArray *) rankStrings;

@end
