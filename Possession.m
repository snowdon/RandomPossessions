//
//  Possession.m
//  RandomPossessions
//
//  Created by  Chuns on 11-7-24.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "Possession.h"

@implementation Possession

+ (id)randomPossession
{
    // Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                                             @"Rusty",
                                                             @"Shiny", nil];
    
    // Create an array of three nouns
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                                                         @"Spork",
                                                         @"Mac", nil];
    
    //
    int adjectiveIndex = rand() % [randomAdjectiveList count];
    int nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    Possession *newPossession =
        [[self alloc] initWithPossessonName:randomName
                             valueInDollars:randomValue
                               serialNumber:randomSerialNumber];
    return newPossession;

}


@end
