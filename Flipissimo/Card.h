//
//  Card.h
//  Flipissimo
//
//  Created by Dalida Martinez on 9/18/16.
//  Copyright © 2016 Dalida. All rights reserved.
//



#import <Foundation/Foundation.h>

@interface Card : NSObject



@property (strong,nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;

@property (nonatomic, getter=isMatched) BOOL matched;



- (int)match:(NSArray  *)otherCards;



@end
