//
//  Deck.h
//  Flipissimo
//
//  Created by Dalida Martinez on 9/19/16.
//  Copyright © 2016 Dalida. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject


-(void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
